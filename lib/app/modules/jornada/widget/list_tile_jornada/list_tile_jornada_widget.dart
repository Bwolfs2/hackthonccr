import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'list_tile_jornada_controller.dart';
import '../../models/jornada_model.dart';

class ListTileJornadaWidget extends StatefulWidget {
  final String dataIni;
  final String dataDestino;

  final String cidadeIni;
  final String cidadeDestino;

  final String distancia;
  final List<ParadaModel> paradas;

  const ListTileJornadaWidget(
      {Key key,
      @required this.dataIni,
      @required this.dataDestino,
      @required this.cidadeIni,
      @required this.cidadeDestino,
      @required this.distancia,
      this.paradas})
      : super(key: key);

  @override
  _ListTileJornadaWidgetState createState() => _ListTileJornadaWidgetState();
}

class _ListTileJornadaWidgetState
    extends ModularState<ListTileJornadaWidget, ListTileJornadaController> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.toggleExpand(),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            padding: EdgeInsets.all(15),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          AutoSizeText("${widget.dataIni}"),
                          SizedBox(
                            width: 10,
                          ),
                          AutoSizeText(
                            "${widget.cidadeIni}",
                            maxLines: 1,
                            minFontSize: 16,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: <Widget>[
                          AutoSizeText("${widget.dataDestino}"),
                          SizedBox(
                            width: 10,
                          ),
                          AutoSizeText(
                            "${widget.cidadeDestino}",
                            minFontSize: 16,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Text("${widget.distancia} km"),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                // InkWell(
                //   onTap: () {
                //     controller.toggleExpand();
                //   },
                //   child: Observer(
                //     builder: (BuildContext context) {
                //       return controller.expanded
                //           ? Icon(FontAwesomeIcons.chevronUp)
                //           : Icon(FontAwesomeIcons.chevronDown);
                //     },
                //   ),
                // )
              ],
            ),
          ),
          Observer(
            builder: (BuildContext context) {
              return AnimatedContainer(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                duration: Duration(milliseconds: 300),
                height: controller.expanded ? widget.paradas.length * 120.0 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "SUGESTÃO DE PARADAS",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: widget.paradas.length,
                      itemBuilder: (BuildContext context, int index) {
                        var current = widget.paradas[index];
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        current.local,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                          "em ${current.cidade} - à ${current.distancia}km"),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Icon(FontAwesomeIcons.cloudSunRain),
                                    Text("${current.temperatura}° C")
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              height: 20,
                              thickness: 1,
                            ),
                            if (index == 1)
                              Container(
                                height: 60,
                                margin: EdgeInsets.symmetric(vertical: 20),
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFD520),
                                  border: Border.all(
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/propaganda_ipiranga.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            if (index == 1)
                              Divider(
                                height: 20,
                                thickness: 1,
                              ),
                          ],
                        );
                      },
                    )

                    // Row(
                    //   children: <Widget>[
                    //     Expanded(
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: <Widget>[
                    //           Text(
                    //             "Posto do Brasil",
                    //             style: TextStyle(
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.w500,
                    //             ),
                    //           ),
                    //           Text("em Joinville / SC - à 150km"),
                    //         ],
                    //       ),
                    //     ),
                    //     Column(
                    //       children: <Widget>[
                    //         Icon(FontAwesomeIcons.cloudSun),
                    //         Text("23° C")
                    //       ],
                    //     ),
                    //   ],
                    // ),
                    // Divider(
                    //   height: 20,
                    //   thickness: 1,
                    // ),

                    // Divider(
                    //   height: 10,
                    //   thickness: 1,
                    // ),
                    // Row(
                    //   children: <Widget>[
                    //     Expanded(
                    //       child: Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: <Widget>[
                    //           Text(
                    //             "Posto do Piracicaba",
                    //             style: TextStyle(
                    //               fontSize: 20,
                    //               fontWeight: FontWeight.w500,
                    //             ),
                    //           ),
                    //           Text("FLORIANOPOLIS/SC - à 6500km"),
                    //         ],
                    //       ),
                    //     ),
                    //     Column(
                    //       children: <Widget>[
                    //         Icon(FontAwesomeIcons.solidSun),
                    //         Text("22° C")
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

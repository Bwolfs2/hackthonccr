import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackthonccr/app/shared/widgets/rounded_panel/rounded_panel_widget.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';
import 'pagar_controller.dart';
import 'package:asuka/asuka.dart' as asuka;

class PagarPage extends StatefulWidget {
  final String title;
  const PagarPage({Key key, this.title = "Pagar"}) : super(key: key);

  @override
  _PagarPageState createState() => _PagarPageState();
}

class _PagarPageState extends ModularState<PagarPage, PagarController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            centerTitle: true,
            title: Text(
              widget.title,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                onPressed: () {},
              ),
            ],
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    bottom: -20,
                    child: Container(
                      child: Image.asset(
                        "assets/confirmed.png",
                        width: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Not affecting the question.
          SliverToBoxAdapter(
            child: Material(
              color: Theme.of(context).primaryColor,
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * .67,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color(0xffF5F6FA),
                ),
                child: Column(
                  children: <Widget>[
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Aproveite, e ganhe pontos ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: 'fazendo check-in\n nos locais parceiros',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    RoundedPanelWidget(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * .5,
                            child: TitleWidget("Escanear QRCode\npara pagar"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Column(
                              children: <Widget>[
                                InkWell(
                                  onTap: () async {
                                    //var result = await BarcodeScanner.scan();
                                    if (1 == 1
                                        //  ||
                                        //     result.rawContent != null &&
                                        //         result.rawContent.trim() != ''
                                        ) {
                                      Modular.link.pushNamed("/confirmacao");
                                    } else {
                                      asuka.showSnackBar(
                                        SnackBar(
                                          content: Container(
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  FontAwesomeIcons.timesCircle,
                                                  color: Colors.red[400],
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                    "Ops não foi possivel verificar, tente novamente!!!"),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Icon(
                                      FontAwesomeIcons.qrcode,
                                      size: 60,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Abrir câmera",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

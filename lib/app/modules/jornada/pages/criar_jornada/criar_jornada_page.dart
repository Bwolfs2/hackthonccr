import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackthonccr/app/shared/widgets/rounded_panel/rounded_panel_widget.dart';
import 'package:intl/intl.dart';

import 'criar_jornada_controller.dart';

class CriarJornadaPage extends StatefulWidget {
  final String title;
  const CriarJornadaPage({Key key, this.title = "Criar/Editar Jornada"})
      : super(key: key);

  @override
  _CriarJornadaPageState createState() => _CriarJornadaPageState();
}

class _CriarJornadaPageState
    extends ModularState<CriarJornadaPage, CriarJornadaController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) {
        var a = controller.reload;

        return Container(
          color: Theme.of(context).primaryColor,
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
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
              ),
              // Not affecting the question.
              SliverToBoxAdapter(
                child: Material(
                  color: Theme.of(context).primaryColor,
                  child: Container(
                    padding: EdgeInsets.all(15),
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
                    child: Container(
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height * .86,
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
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: DateTimeField(
                                  decoration: InputDecoration(
                                    labelText: "PARTIDA",
                                  ),
                                  format: DateFormat("dd-MM-yyyy"),
                                  onShowPicker: (context, currentValue) {
                                    return showDatePicker(
                                        context: context,
                                        firstDate: DateTime(1900),
                                        initialDate:
                                            currentValue ?? DateTime.now(),
                                        lastDate: DateTime(2100));
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: DateTimeField(
                                  decoration: InputDecoration(
                                    labelText: "CHEGADA",
                                  ),
                                  format: DateFormat("dd-MM-yyyy"),
                                  onShowPicker: (context, currentValue) {
                                    return showDatePicker(
                                        context: context,
                                        firstDate: DateTime(1900),
                                        initialDate:
                                            currentValue ?? DateTime.now(),
                                        lastDate: DateTime(2100));
                                  },
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "ORIGEM",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "DESTINO",
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "CAMINHÃO",
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "TIPO DE CARGA",
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RoundedPanelWidget(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Estimativa de Gastos",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  LineGridJornada("Valor", "Descrição",
                                      thiknesSeparator: 3),
                                  LineGridJornada("R\$ 235,00", "Pedágios"),
                                  LineGridJornada("R\$ 2535,00", "Combustível"),
                                  LineGridJornada(
                                    "R\$ 2770,00",
                                    "Total",
                                    bold: true,
                                    thiknesSeparator: 0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 250,
                            child: GoogleMap(
                              // mapToolbarEnabled: false,
                              // zoomControlsEnabled: false,
                              // mapType: MapType.hybrid,
                              // initialCameraPosition: controller.kGooglePlex,
                              // onMapCreated: (GoogleMapController _controller) {
                              //   controller.controller.complete(_controller);
                              // },

                              initialCameraPosition: CameraPosition(
                                target: LatLng(controller.originLatitude,
                                    controller.originLongitude),
                                zoom: 8,
                              ),
                              myLocationEnabled: true,
                              tiltGesturesEnabled: true,
                              compassEnabled: true,
                              scrollGesturesEnabled: true,
                              zoomGesturesEnabled: true,
                              onMapCreated: controller.onMapCreated,
                              markers:
                                  Set<Marker>.of(controller.markers.values),
                              polylines:
                                  Set<Polyline>.of(controller.polylines.values),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: double.infinity,
                            height: 50,
                            child: RaisedButton(
                              color: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onPressed: () {
                                Modular.to.pop();
                              },
                              child: Text(
                                "Criar",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class LineGridJornada extends StatelessWidget {
  final String field01;
  final String field02;
  final double thiknesSeparator;
  final bool bold;

  const LineGridJornada(this.field01, this.field02,
      {Key key, this.thiknesSeparator = 1, this.bold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 100,
              child: Text(
                field01,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Expanded(
              child: Text(
                field02,
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.fade,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
        if (thiknesSeparator != 0)
          Divider(
            thickness: thiknesSeparator,
          ),
      ],
    );
  }
}

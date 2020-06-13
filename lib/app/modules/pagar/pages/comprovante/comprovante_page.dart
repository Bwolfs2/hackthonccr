import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'comprovante_controller.dart';

class ComprovantePage extends StatefulWidget {
  final String title;
  const ComprovantePage({Key key, this.title = "Comprovante"})
      : super(key: key);

  @override
  _ComprovantePageState createState() => _ComprovantePageState();
}

class _ComprovantePageState
    extends ModularState<ComprovantePage, ComprovanteController> {
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
            expandedHeight: 90,
          ),
          SliverToBoxAdapter(
            child: Material(
              color: Theme.of(context).primaryColor,
              child: Container(
                padding: EdgeInsets.all(20),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Pagamento feito",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "11 de junho de 2020 - 16:40",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "valor:",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "R\$ 100,00",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "de",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "Joao Antonio da Silva",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("cpf"),
                    Text(
                      "000.000.000-22",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("instituição"),
                    Text(
                      "Fintech CCR",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("agencia"),
                            Text(
                              "0800",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: <Widget>[
                            Text("conta"),
                            Text(
                              "05050505-25",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("para"),
                    Text(
                      "Joao Antonio da Silva",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("cpf"),
                    Text(
                      "000.000.000-22",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("instituição"),
                    Text(
                      "Fintech CCR",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("agencia"),
                            Text(
                              "0800",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: <Widget>[
                            Text("conta"),
                            Text(
                              "05050505-25",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("authenticação"),
                    Text(
                      "11a28814-bb1c-4a9c-b480-880bcafcf10d",
                      style: TextStyle(fontSize: 20),
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
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          Modular.to.popUntil(ModalRoute.withName("/"));
                        },
                        child: Text(
                          "Finalizar",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
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

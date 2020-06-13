import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'confirmacao_controller.dart';

class ConfirmacaoPage extends StatefulWidget {
  final String title;
  const ConfirmacaoPage({Key key, this.title = "Confirmacao"})
      : super(key: key);

  @override
  _ConfirmacaoPageState createState() => _ConfirmacaoPageState();
}

class _ConfirmacaoPageState
    extends ModularState<ConfirmacaoPage, ConfirmacaoController> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 300,
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'R\$ 100,00\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            TextSpan(
                              text: 'para ',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 24),
                            ),
                            TextSpan(
                              text: 'Posto Sucesso \n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            TextSpan(
                              text: 'CNPJ 01.001.001/0001-01',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
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
                          Modular.link.pushNamed("/codigoConfirmacao");
                        },
                        child: Text(
                          "Pagar",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )
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

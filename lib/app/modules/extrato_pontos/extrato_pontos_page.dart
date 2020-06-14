import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackthonccr/app/shared/widgets/line_grid/line_grid.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';

import '../../shared/widgets/meus_pontos/meus_pontos_widget.dart';
import '../../shared/widgets/rounded_panel/rounded_panel_widget.dart';
import 'extrato_pontos_controller.dart';
import 'widgets/item_acumulo_pontos/item_acumulo_pontos.dart';
import '../../shared/widgets/selectable_label/selectable_label.dart';

class ExtratoPontosPage extends StatefulWidget {
  final String title;
  const ExtratoPontosPage({Key key, this.title = "Extrato de Pontos"})
      : super(key: key);

  @override
  _ExtratoPontosPageState createState() => _ExtratoPontosPageState();
}

class _ExtratoPontosPageState
    extends ModularState<ExtratoPontosPage, ExtratoPontosController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
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
                expandedHeight: 270.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: MeusPontosWidget(
                    assetImage: 'undraw_Savings_dwkw',
                    pontos: '15.237',
                    pontosSaude: '40.237',
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
                        RoundedPanelWidget(
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Image.asset(
                                  "assets/business.png",
                                  width: 150,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: TitleWidget(
                                        "Acúmulo de Pontos",
                                        //  color: Colors.red,
                                      )),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.red,
                                        size: 30,
                                      )
                                    ],
                                  ),
                                  Observer(
                                    builder: (_) {
                                      return Row(
                                        children: <Widget>[
                                          SelectableLabel(
                                            label: "Hoje",
                                            isSelected:
                                                controller.selectedLabel ==
                                                    "Hoje",
                                            action: () {
                                              controller
                                                  .setSelectedLabel("Hoje");
                                            },
                                          ),
                                          SelectableLabel(
                                            label: "Semana",
                                            isSelected:
                                                controller.selectedLabel ==
                                                    "Semana",
                                            action: () {
                                              controller
                                                  .setSelectedLabel("Semana");
                                            },
                                          ),
                                          SelectableLabel(
                                            label: "Mês",
                                            isSelected:
                                                controller.selectedLabel ==
                                                    "Mês",
                                            action: () {
                                              controller
                                                  .setSelectedLabel("Mês");
                                            },
                                          ),
                                          SelectableLabel(
                                            label: "Ano",
                                            isSelected:
                                                controller.selectedLabel ==
                                                    "Ano",
                                            action: () {
                                              controller
                                                  .setSelectedLabel("Ano");
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 160,
                                    child: PageView(
                                      controller: controller.pageViewController,
                                      physics: NeverScrollableScrollPhysics(),
                                      children: <Widget>[
                                        ItemAcumuloPontos(
                                          healthPoints: 300,
                                          healthPosition: 148,
                                          starPoints: 500,
                                          starPosition: 1458,
                                        ),
                                        ItemAcumuloPontos(
                                          healthPoints: 200,
                                          healthPosition: 248,
                                          starPoints: 600,
                                          starPosition: 1658,
                                        ),
                                        ItemAcumuloPontos(
                                          healthPoints: 800,
                                          healthPosition: 748,
                                          starPoints: 1000,
                                          starPosition: 1757,
                                        ),
                                        ItemAcumuloPontos(
                                          healthPoints: 1000,
                                          healthPosition: 1048,
                                          starPoints: 2500,
                                          starPosition: 2344,
                                        ),
                                      ],
                                    ),
                                  ),
                                  RaisedButton(
                                    onPressed: () {},
                                    color: Theme.of(context).primaryColor,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Text(
                                        "Ver Ranking",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        GridExtrato(),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {},
            child: Icon(Icons.shopping_cart),
          ),
        )
      ],
    );
  }
}

class GridExtrato extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RoundedPanelWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: TitleWidget(
                "Extrato de Pontos",
                //  color: Colors.red,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  FontAwesomeIcons.filter,
                  size: 18,
                  color: Colors.red,
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                LineGrid(
                  "Data",
                  "Operação",
                  "Detalhes",
                  "Qtd",
                  null,
                  thiknesSeparator: 3,
                ),
                LineGrid('10/06', 'XP', 'Compra Parceiros', '+50', true),
                LineGrid('10/06', 'Saúde', 'Água', '+5', true),
                LineGrid('10/06', 'XP', '10x Cupons', '-500', false),
                LineGrid('10/06', 'XP', 'Noite de sono', '+30', true),
                LineGrid('10/06', 'XP', 'Pedagio CCR', '+50', true),
                LineGrid('10/06', 'XP', 'Descontos', '-50', false),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Text("Ver mais"),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackthonccr/app/modules/extrato_pontos/widgets/item_acumulo_pontos/item_acumulo_pontos.dart';
import 'package:hackthonccr/app/shared/widgets/line_grid/line_grid.dart';
import 'package:hackthonccr/app/shared/widgets/rounded_panel/rounded_panel_widget.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';
import 'extrato_carteira_controller.dart';
import '../../shared/widgets/selectable_label/selectable_label.dart';
import '../../shared/widgets/meus_pontos/meus_pontos_widget.dart';

class ExtratoCarteiraPage extends StatefulWidget {
  final String title;
  const ExtratoCarteiraPage({Key key, this.title = "ExtratoCarteira"})
      : super(key: key);

  @override
  _ExtratoCarteiraPageState createState() => _ExtratoCarteiraPageState();
}

class _ExtratoCarteiraPageState
    extends ModularState<ExtratoCarteiraPage, ExtratoCarteiraController> {
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
            // actions: <Widget>[
            //   IconButton(
            //     icon: Icon(
            //       Icons.shopping_cart,
            //     ),
            //     onPressed: () {},
            //   ),
            // ],
            expandedHeight: 270.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                alignment: Alignment.centerLeft,
                children: <Widget>[
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      child: Image.asset(
                        "assets/savings.png",
                        width: 240,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Saldo em conta"),
                        Text(
                          "R\$ 235,00",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
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
                    RaisedButton(
                      onPressed: () {},
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Usar Pontos",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
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
                                      child: TitleWidget("Resumo por Período")),
                                  Icon(Icons.art_track)
                                ],
                              ),
                              Observer(
                                builder: (_) {
                                  return Row(
                                    children: <Widget>[
                                      SelectableLabel(
                                        label: "Hoje",
                                        isSelected:
                                            controller.selectedLabel == "Hoje",
                                        action: () {
                                          controller.setSelectedLabel("Hoje");
                                        },
                                      ),
                                      SelectableLabel(
                                        label: "Semana",
                                        isSelected: controller.selectedLabel ==
                                            "Semana",
                                        action: () {
                                          controller.setSelectedLabel("Semana");
                                        },
                                      ),
                                      SelectableLabel(
                                        label: "Mês",
                                        isSelected:
                                            controller.selectedLabel == "Mês",
                                        action: () {
                                          controller.setSelectedLabel("Mês");
                                        },
                                      ),
                                      SelectableLabel(
                                        label: "Ano",
                                        isSelected:
                                            controller.selectedLabel == "Ano",
                                        action: () {
                                          controller.setSelectedLabel("Ano");
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
                                      starPoints: 500,
                                    ),
                                    ItemAcumuloPontos(
                                      healthPoints: 200,
                                      starPoints: 600,
                                    ),
                                    ItemAcumuloPontos(
                                      healthPoints: 800,
                                      starPoints: 1000,
                                    ),
                                    ItemAcumuloPontos(
                                      healthPoints: 1000,
                                      starPoints: 2500,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    GridExtratoCarteira(),
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

class GridExtratoCarteira extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RoundedPanelWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: TitleWidget("Extrato de Pontos")),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("Filtrar"),
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

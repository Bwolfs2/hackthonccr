import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';
import 'extrato_pontos_controller.dart';
import '../../shared/widgets/rounded_panel/rounded_panel_widget.dart';
import 'widgets/item_acumulo_pontos/item_acumulo_pontos.dart';
import '../../shared/widgets/pontuacao/pontuacao.dart';
import 'widgets/selectable_label/selectable_label.dart';
import '../../shared/widgets/meus_pontos/meus_pontos_widget.dart';

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
              background: MeusPontosWidget(
                assetImage: 'undraw_Savings_dwkw',
                pontos: '15237',
                pontosSaude: '40237',
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
                            child: Image.network(
                              "https://www.medley.com.br/-/media/EMS/Conditions/Generics/Brands/Medley/Depressao/depressao-caminhos-ajudar-pessoa-depresso-2.png?h=1033&la=pt-BR&w=1512&hash=45180EA38F629FF84962EFBA75E2817123F4AA62",
                              width: 250,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                      child: TitleWidget("Acúmulo de Pontos")),
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
                                      fontWeight: FontWeight.w400,
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

class GridExtrato extends StatelessWidget {
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

class LineGrid extends StatelessWidget {
  final String field01;
  final String field02;
  final String field03;
  final String field04;
  final bool positivo;
  final double thiknesSeparator;

  const LineGrid(
    this.field01,
    this.field02,
    this.field03,
    this.field04,
    this.positivo, {
    Key key,
    this.thiknesSeparator = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 60,
              child: Text(
                field01,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              width: 70,
              child: Text(
                field02,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Expanded(
              child: Text(
                field03,
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.fade,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              width: 40,
              child: Text(
                field04,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 14,
                  color: positivo == null
                      ? Colors.black87
                      : positivo ? Colors.green[200] : Colors.red[200],
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: thiknesSeparator,
        ),
      ],
    );
  }
}

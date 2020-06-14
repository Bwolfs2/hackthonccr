import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackthonccr/app/shared/widgets/meus_pontos/meus_pontos_widget.dart';
import 'package:hackthonccr/app/shared/widgets/rounded_panel/rounded_panel_widget.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';

import 'trocar_pontos_controller.dart';

class TrocarPontosPage extends StatefulWidget {
  final String title;
  const TrocarPontosPage({Key key, this.title = "Trocar Pontos"})
      : super(key: key);

  @override
  _TrocarPontosPageState createState() => _TrocarPontosPageState();
}

class _TrocarPontosPageState
    extends ModularState<TrocarPontosPage, TrocarPontosController> {
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
              background: MeusPontosWidget(
                assetImage: 'send gift',
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
                    Observer(
                      builder: (BuildContext context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * .4,
                              child: RaisedButton(
                                onPressed: () {
                                  controller.setSelectedLabel(0);
                                },
                                color: controller.selectedLabel == 0
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "Pontos",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .4,
                              child: RaisedButton(
                                onPressed: () {
                                  controller.setSelectedLabel(1);
                                },
                                color: controller.selectedLabel == 1
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "Pontos Saúde",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 660,
                      child: PageView(
                        controller: controller.pageViewController,
                        physics: NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                RoundedPanelWidget(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: TitleWidget("Descontos"),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              FontAwesomeIcons.filter,
                                              size: 15,
                                            ),
                                            onPressed: () {},
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 180,
                                        child: ListView.builder(
                                          itemCount: controller.produtos.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return ProdutoWidget(
                                                controller.produtos[index]);
                                          },
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          FlatButton(
                                            onPressed: () {},
                                            child: Text("Ver Todos"),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                RoundedPanelWidget(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: TitleWidget("Trocar Pontos"),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              FontAwesomeIcons.filter,
                                              size: 15,
                                            ),
                                            onPressed: () {},
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 180,
                                        child: ListView.builder(
                                          itemCount: 3,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return ProdutoWidget(
                                                controller
                                                    .produtosSemDesconto[index],
                                                usarPontos: true);
                                          },
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          FlatButton(
                                            onPressed: () {},
                                            child: Text("Ver Todos"),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                RoundedPanelWidget(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: TitleWidget("Descontos"),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              FontAwesomeIcons.filter,
                                              size: 15,
                                            ),
                                            onPressed: () {},
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 180,
                                        child: ListView.builder(
                                          itemCount: controller.produtos.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return ProdutoWidget(
                                              controller.produtos[index],
                                            );
                                          },
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          FlatButton(
                                            onPressed: () {},
                                            child: Text("Ver Todos"),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                RoundedPanelWidget(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: TitleWidget(
                                                "Trocar Pontos de Saúde"),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              FontAwesomeIcons.filter,
                                              size: 15,
                                            ),
                                            onPressed: () {},
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 180,
                                        child: ListView.builder(
                                          itemCount: controller
                                              .produtosSemDesconto.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return ProdutoWidget(
                                                controller
                                                    .produtosSemDesconto[index],
                                                usarPontos: true);
                                          },
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          FlatButton(
                                            onPressed: () {},
                                            child: Text("Ver Todos"),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
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

class ProdutoWidget extends StatelessWidget {
  final bool usarPontos;
  final ProdutoModel produto;

  const ProdutoWidget(this.produto, {Key key, this.usarPontos = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * .23,
          height: MediaQuery.of(context).size.width * .23,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage("assets/${produto.assetImage}"),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.bottomCenter,
          child: Container(
            color: Colors.black54,
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              usarPontos ? produto.pontos : produto.desconto,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        Text(produto.descricao),
        Text(produto.cidade),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.brown,
          ),
          child: Text(
            "Obter",
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 12),
          ),
        ),
        if (!usarPontos)
          Text(
            "com ${produto.pontos}",
            style: TextStyle(fontSize: 10),
          ),
      ],
    );
  }
}

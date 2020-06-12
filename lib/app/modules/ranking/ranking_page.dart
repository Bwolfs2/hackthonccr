import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackthonccr/app/shared/widgets/rounded_panel/rounded_panel_widget.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';
import 'ranking_controller.dart';
import '../../shared/widgets/pontuacao/pontuacao.dart';

class RankingPage extends StatefulWidget {
  final String title;
  const RankingPage({Key key, this.title = "Ranking"}) : super(key: key);

  @override
  _RankingPageState createState() => _RankingPageState();
}

class _RankingPageState extends ModularState<RankingPage, RankingController> {
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
                children: <Widget>[
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: Container(
                      child: Image.network(
                        "https://static.wixstatic.com/media/4865e6_e7da40899cb54b019273e36704546145~mv2.png/v1/fill/w_200,h_202,al_c,q_85,usm_0.66_1.00_0.01/porquinho-de-dinheiro-png.webp",
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Você:"),
                        Pontuacao(
                          icon: Icons.star,
                          lvl: 5,
                          pontos: "15.237 pontos",
                          posicao: 14,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Pontuacao(
                          icon: Icons.favorite,
                          lvl: 5,
                          pontos: "40.237 pontos de saúde",
                          posicao: 14,
                        )
                      ],
                    ),
                  )
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
                    Text(
                      "Confira o ranking de acumulado\n e mensal de postos e saúde",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundedPanelWidget(
                      child: Stack(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: TitleWidget("Ranking geral pontos"),
                                  ),
                                  Container(
                                    width: 120,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Expanded(
                                            child: Text(
                                                "Mudar para pontos saúde")),
                                        Icon(Icons.art_track),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              RankingView()
                            ],
                          ),
                        ],
                      ),
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

class RankingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(Icons.perm_camera_mic),
                        radius: 25,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "33.587",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: -20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text(
                          "2°",
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, bottom: 5),
                        child: Text("Filipo Peter"),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Vilson B.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircleAvatar(
                              child: Icon(Icons.perm_camera_mic),
                              radius: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "33.587",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: -40,
                        left: 25,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black,
                          child: Text(
                            "1°",
                            style: TextStyle(
                              fontSize: 25,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(Icons.perm_camera_mic),
                        radius: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "33.587",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: -20,
                  right: -20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 5, bottom: 5),
                        child: Text("Tuca Silva"),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text(
                          "3°",
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (_, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text(
                    "${index + 3}°",
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Usuario $index")),
                      Text(
                        "${1247 * (index + 1)}",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              );
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text("Ver Ranking Completo"),
            ),
          ],
        ),
      ],
    );
  }
}

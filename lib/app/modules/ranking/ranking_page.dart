import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackthonccr/app/shared/widgets/meus_pontos/meus_pontos_widget.dart';
import 'package:hackthonccr/app/shared/widgets/rounded_panel/rounded_panel_widget.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';
import 'ranking_controller.dart';
import '../../shared/widgets/selectable_label/selectable_label.dart';
import 'models/ranking_model.dart';

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
              ///winners.png
              background: MeusPontosWidget(
                  assetImage: 'winners',
                  pontos: '15237',
                  pontosSaude: '40237',
                  showVoce: true,
                  position: 14,
                  positionSaude: 14),
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
                                          "Mudar para pontos saúde",
                                          style: TextStyle(fontSize: 10),
                                        )),
                                        IconButton(
                                          icon: Image.asset(
                                              "assets/journi_coin.png"),
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Observer(builder: (_) {
                                return Row(
                                  children: <Widget>[
                                    SelectableLabel(
                                      label: 'Acumulado',
                                      action: () {
                                        controller
                                            .setSelectedLabel("Acumulado");
                                      },
                                      isSelected: controller.selectedLabel ==
                                          "Acumulado",
                                    ),
                                    SelectableLabel(
                                      label: 'Mensal',
                                      action: () {
                                        controller.setSelectedLabel("Mensal");
                                      },
                                      isSelected:
                                          controller.selectedLabel == "Mensal",
                                    ),
                                  ],
                                );
                              }),
                              Container(
                                height: 710,
                                child: PageView(
                                  controller: controller.pageViewController,
                                  physics: NeverScrollableScrollPhysics(),
                                  children: <Widget>[
                                    RankingView(
                                      lista: [
                                        RankingModel(
                                          nome: "Vilson B",
                                          pontuacao: 33587,
                                          position: 1,
                                          url:
                                              'https://pbs.twimg.com/profile_images/1135526099063099393/lMunFp_o_400x400.jpg',
                                        ),
                                        RankingModel(
                                          nome: "Filipo Peter",
                                          pontuacao: 30587,
                                          position: 2,
                                          url:
                                              'https://avatars2.githubusercontent.com/u/4654514?s=460&u=eb927206d1e73ccc297f0a7911f4c8892bc3900f&v=4',
                                        ),
                                        RankingModel(
                                          nome: "Frank dos Reis",
                                          pontuacao: 27222,
                                          position: 3,
                                          url:
                                              'https://scontent.fpoa6-1.fna.fbcdn.net/v/t1.0-9/81577267_2902405543138055_5969684390282788864_n.jpg?_nc_cat=104&_nc_sid=8024bb&_nc_ohc=A_9TIFxNaT4AX_CVMFW&_nc_ht=scontent.fpoa6-1.fna&oh=b47909035faae638679ecfd673e18870&oe=5F097ABC',
                                        ),
                                        RankingModel(
                                          nome: "Tuca Silva",
                                          pontuacao: 26222,
                                          position: 4,
                                        ),
                                        RankingModel(
                                          nome: "Alisson",
                                          pontuacao: 25223,
                                          position: 5,
                                        ),
                                        RankingModel(
                                          nome: "Bwolf",
                                          pontuacao: 25222,
                                          position: 6,
                                        ),
                                        RankingModel(
                                          nome: "Jorge do Truck",
                                          pontuacao: 22322,
                                          position: 7,
                                        ),
                                        RankingModel(
                                          nome: "Tico das Asas",
                                          pontuacao: 22227,
                                          position: 8,
                                        ),
                                        RankingModel(
                                          nome: "Joao Viajador",
                                          pontuacao: 22222,
                                          position: 9,
                                        ),
                                        RankingModel(
                                          nome: "Tiaguinho",
                                          pontuacao: 20035,
                                          position: 10,
                                        ),
                                      ],
                                    ),
                                    RankingView(
                                      lista: [
                                        RankingModel(
                                          nome: "Frank dos Reis",
                                          pontuacao: 8587,
                                          position: 1,
                                          url:
                                              'https://scontent.fpoa6-1.fna.fbcdn.net/v/t1.0-9/81577267_2902405543138055_5969684390282788864_n.jpg?_nc_cat=104&_nc_sid=8024bb&_nc_ohc=A_9TIFxNaT4AX_CVMFW&_nc_ht=scontent.fpoa6-1.fna&oh=b47909035faae638679ecfd673e18870&oe=5F097ABC',
                                        ),
                                        RankingModel(
                                            nome: "Vilson B",
                                            pontuacao: 7387,
                                            position: 2,
                                            url:
                                                'https://pbs.twimg.com/profile_images/1135526099063099393/lMunFp_o_400x400.jpg'),
                                        RankingModel(
                                            nome: "Filipo Peter",
                                            pontuacao: 6222,
                                            position: 3,
                                            url:
                                                'https://avatars2.githubusercontent.com/u/4654514?s=460&u=eb927206d1e73ccc297f0a7911f4c8892bc3900f&v=4'),
                                        RankingModel(
                                          nome: "Tuca Silva",
                                          pontuacao: 6122,
                                          position: 4,
                                        ),
                                        RankingModel(
                                          nome: "Alisson",
                                          pontuacao: 6053,
                                          position: 5,
                                        ),
                                        RankingModel(
                                          nome: "Bwolf",
                                          pontuacao: 5252,
                                          position: 6,
                                        ),
                                        RankingModel(
                                          nome: "Jorge do Truck",
                                          pontuacao: 5122,
                                          position: 7,
                                        ),
                                        RankingModel(
                                          nome: "Tico das Asas",
                                          pontuacao: 4207,
                                          position: 8,
                                        ),
                                        RankingModel(
                                          nome: "Joao Viajador",
                                          pontuacao: 3022,
                                          position: 9,
                                        ),
                                        RankingModel(
                                          nome: "Tiaguinho",
                                          pontuacao: 1205,
                                          position: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
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
  final List<RankingModel> lista;

  const RankingView({Key key, @required this.lista}) : super(key: key);

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
                        backgroundImage: NetworkImage(lista[1].url),
                        radius: 25,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AutoSizeText(
                        "${lista[1].pontuacao}",
                        maxLines: 1,
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
                        child: Text("${lista[1].nome}"),
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
                  Container(
                    width: 100,
                    child: AutoSizeText(
                      "${lista[0].nome}",
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
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
                              backgroundImage: NetworkImage(lista[0].url),
                              radius: 30,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            AutoSizeText(
                              "${lista[0].pontuacao}",
                              maxLines: 1,
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
                        backgroundImage: NetworkImage(lista[2].url),
                        radius: 30,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AutoSizeText(
                        "${lista[2].pontuacao}",
                        maxLines: 1,
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
                        child: Text("${lista[2].nome}"),
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
            itemCount: lista.length - 3,
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
                      Expanded(child: Text("${lista[index + 3].nome}")),
                      Text(
                        "${lista[index + 3].pontuacao}",
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

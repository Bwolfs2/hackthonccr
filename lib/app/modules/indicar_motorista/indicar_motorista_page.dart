import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackthonccr/app/shared/widgets/rounded_panel/rounded_panel_widget.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';
import 'indicar_motorista_controller.dart';

class IndicarMotoristaPage extends StatefulWidget {
  final String title;
  const IndicarMotoristaPage({Key key, this.title = "Indicar Motorista"})
      : super(key: key);

  @override
  _IndicarMotoristaPageState createState() => _IndicarMotoristaPageState();
}

class _IndicarMotoristaPageState
    extends ModularState<IndicarMotoristaPage, IndicarMotoristaController> {
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
            // title: Text(
            //   widget.title,
            //   style: TextStyle(
            //     fontSize: 18.0,
            //   ),
            // ),
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
                    bottom: 0,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * .65,
                          child: Text(
                            "Indique motoristas e ganhe pontos",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .6,
                          child: RichText(
                            text: TextSpan(
                              // Note: Styles for TextSpans must be explicitly defined.
                              // Child text spans will inherit styles from parent
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Ganhe ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                                TextSpan(
                                  text: '100 pontos ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      'para cada motorista cadastrado com seu ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                                TextSpan(
                                  text: 'código ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'ele(a) ganhará ',
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal),
                                ),
                                TextSpan(
                                  text: '200 pontos:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "JOAOSILVA857",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
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
                    TitleWidget("Por onde quer indicar?"),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.facebook,
                            size: 60,
                            color: Colors.blue[500],
                          ),
                          Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 60,
                            color: Colors.green[400],
                          ),
                          Icon(
                            Icons.mail_outline,
                            size: 60,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
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
                              TitleWidget("15 motoristas"),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "estão cuidando da saúde, depois da sua indicação!",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 250,
                          )
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

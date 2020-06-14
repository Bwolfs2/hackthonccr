import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackthonccr/app/modules/home/header/header/header_widget.dart';
import 'home_controller.dart';
import 'indique_ganhe/indique_ganhe/indique_ganhe_widget.dart';
import 'widgets/actions/body_logged_widget.dart';
import 'widgets/parceiro_caminhoneiro/parceiro_caminhoneiro/parceiro_caminhoneiro_widget.dart';

import 'package:asuka/asuka.dart' as asuka;

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(FontAwesomeIcons.bars), onPressed: () {}),
                      Expanded(
                        child: Text(
                          "Journi",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.fredokaOne(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Observer(
                        builder: (BuildContext context) {
                          if (controller.isLogged) {
                            return Container(
                              width: 100,
                              height: 60,
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    controller.logoff();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Sair"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                          backgroundColor:
                                              Colors.deepPurple[300],
                                          child: Text(
                                            "JA",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                  // child: Padding(
                                  //   padding: const EdgeInsets.all(10),
                                  //   child: CircleAvatar(
                                  //     backgroundImage: NetworkImage(
                                  //         "https://pbs.twimg.com/profile_images/1135526099063099393/lMunFp_o_400x400.jpg"),
                                  //   ),
                                  // ),
                                  ),
                            );
                          } else {
                            return Container(
                              width: 100,
                              height: 60,
                              child: GestureDetector(
                                onTap: () {
                                  Modular.to.pushNamed("/auth");
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Entrar"),
                                      Icon(Icons.person)
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    ],
                  ),
                  Observer(
                    builder: (BuildContext context) {
                      if (controller.isLogged) {
                        return HeaderWidget();
                      }
                      return Container();
                    },
                  ),
                  BodyLoggedWidget(),
                  Observer(
                    builder: (BuildContext context) {
                      return ParceiroCaminhoneiroWidget(
                        isLogged: controller.isLogged,
                      );
                    },
                  ),
                  IndiqueGanheWidget(),
                ],
              ),
            ),
          ),
        ),
        Observer(
          builder: (BuildContext context) {
            if (controller.isLogged) {
              return Positioned(
                right: 20,
                bottom: 20,
                child: GestureDetector(
                  onLongPress: () {
                    asuka.showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Estou sendo roubado!!!!",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Text(
                        "SOS",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.red,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Icon(
                              FontAwesomeIcons.lifeRing,
                              size: 45,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }
            return Container();
          },
        ),
      ],
    );
  }
}

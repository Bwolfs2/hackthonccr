import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                    ],
                  ),
                  HeaderWidget(),
                  BodyLoggedWidget(),
                  ParceiroCaminhoneiroWidget(),
                  IndiqueGanheWidget(),
                  Container(
                    height: 110,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
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
                Icon(
                  FontAwesomeIcons.lifeRing,
                  size: 60,
                  color: Colors.red,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

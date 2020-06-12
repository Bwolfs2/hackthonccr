import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackthonccr/app/modules/home/header/header/header_widget.dart';
import 'home_controller.dart';
import 'indique_ganhe/indique_ganhe/indique_ganhe_widget.dart';
import 'widgets/actions/body_logged_widget.dart';
import 'widgets/parceiro_caminhoneiro/parceiro_caminhoneiro/parceiro_caminhoneiro_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                  Spacer(),
                  IconButton(icon: Icon(Icons.person), onPressed: () {})
                ],
              ),
              HeaderWidget(),
              BodyLoggedWidget(),
              ParceiroCaminhoneiroWidget(),
              IndiqueGanheWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

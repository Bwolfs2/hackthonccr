import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';

import 'indique_ganhe_controller.dart';

class IndiqueGanheWidget extends StatefulWidget {
  @override
  _IndiqueGanheWidgetState createState() => _IndiqueGanheWidgetState();
}

class _IndiqueGanheWidgetState
    extends ModularState<IndiqueGanheWidget, IndiqueGanheController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Color(0xffF8EAE9),
          width: double.infinity,
          height: 190,
        ),
        Positioned(
          child: Image.asset(
            "assets/undraw_shared_goals_3d12.png",
            width: 250,
          ),
          right: -10,
          bottom: 0,
        ),
        Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TitleWidget(
                "Indique e Ganhe",
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Convide um amigo\ncaminhoneiro para\nutilizar o app e você\ne ele ganharão pontos.",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 150,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "CONVIDAR",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

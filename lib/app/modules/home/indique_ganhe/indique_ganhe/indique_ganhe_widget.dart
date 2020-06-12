import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'indique_ganhe_controller.dart';

class IndiqueGanheWidget extends StatefulWidget {
  @override
  _IndiqueGanheWidgetState createState() => _IndiqueGanheWidgetState();
}

class _IndiqueGanheWidgetState
    extends ModularState<IndiqueGanheWidget, IndiqueGanheController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF8EAE9),
      padding: EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * .2,
            width: MediaQuery.of(context).size.width * .3,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Indique e ganhe",
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Convide um amigo\ncaminhoneiro para\nutilizar o app e você\ne ele ganharão pontos.",
                  textAlign: TextAlign.end,
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
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

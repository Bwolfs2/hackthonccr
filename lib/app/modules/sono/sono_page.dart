import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;

import 'sono_controller.dart';

class SonoPage extends StatefulWidget {
  final String title;
  const SonoPage({Key key, this.title = "Sono"}) : super(key: key);

  @override
  _SonoPageState createState() => _SonoPageState();
}

class _SonoPageState extends ModularState<SonoPage, SonoController> {
  String formatDuration(Duration duration) {
    return duration.toString().split('.').first.padLeft(8, '0');
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool result = false;

        await asuka.showDialog(
          builder: (_context) {
            return AlertDialog(
              backgroundColor: Theme.of(context).primaryColor,
              content: Text(
                "Voltar vai interromper o seu Sono, deseja mesmo voltar?",
                style: TextStyle(fontSize: 20),
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    result = true;
                    Navigator.of(_context).pop();
                  },
                  child: Text("Sim"),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(_context).pop();
                  },
                  child: Text("Nao"),
                )
              ],
            );
          },
        );

        return result;
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text(widget.title),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Observer(
                  builder: (BuildContext context) {
                    return Text(
                      "${formatDuration(Duration(seconds: controller.seconds))}",
                      style: TextStyle(
                        fontSize: 80,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
                Text(
                  "tempo de sono",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Observer(
                  builder: (BuildContext context) {
                    return Switch(
                      value: controller.runningMusic,
                      onChanged: (bool value) => controller.toggleMusic(),
                    );
                  },
                ),
                RichText(
                  text: TextSpan(
                      text: "tocar\n",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "Música relaxante",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.alarm,
                  size: 70,
                ),
                SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(
                      text: "Você será acordado\nno melhor momento entre",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "\n06h23 ~06h45",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ]),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'receber_controller.dart';

class ReceberPage extends StatefulWidget {
  final String title;
  const ReceberPage({Key key, this.title = "Receber"}) : super(key: key);

  @override
  _ReceberPageState createState() => _ReceberPageState();
}

class _ReceberPageState extends ModularState<ReceberPage, ReceberController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}

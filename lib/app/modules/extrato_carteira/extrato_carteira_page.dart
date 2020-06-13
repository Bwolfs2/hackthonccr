import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'extrato_carteira_controller.dart';

class ExtratoCarteiraPage extends StatefulWidget {
  final String title;
  const ExtratoCarteiraPage({Key key, this.title = "ExtratoCarteira"})
      : super(key: key);

  @override
  _ExtratoCarteiraPageState createState() => _ExtratoCarteiraPageState();
}

class _ExtratoCarteiraPageState
    extends ModularState<ExtratoCarteiraPage, ExtratoCarteiraController> {
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

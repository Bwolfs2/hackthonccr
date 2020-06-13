import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pontuacao extends StatelessWidget {
  final int lvl;
  final String pontos;
  final Widget icon;
  final int posicao;

  const Pontuacao(
      {Key key,
      @required this.lvl,
      @required this.pontos,
      @required this.icon,
      this.posicao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            icon,
            SizedBox(
              width: 5,
            ),
            Text(
              "Nível $lvl",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          "$pontos",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.red,
          ),
        ),
        if (posicao != null) Text("$posicao°")
      ],
    );
  }
}

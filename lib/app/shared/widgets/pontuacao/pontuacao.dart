import 'package:flutter/cupertino.dart';

class Pontuacao extends StatelessWidget {
  final int lvl;
  final String pontos;
  final IconData icon;
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
            Icon(
              icon,
              size: 30,
            ),
            Text("Nível $lvl"),
          ],
        ),
        Text(
          "$pontos",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        if (posicao != null) Text("$posicao°")
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hackthonccr/app/shared/widgets/pontuacao/pontuacao.dart';

class MeusPontosWidget extends StatelessWidget {
  final String assetImage;
  final String pontos;
  final String pontosSaude;
  final bool showVoce;
  final int position;
  final int positionSaude;

  const MeusPontosWidget(
      {Key key,
      @required this.assetImage,
      @required this.pontos,
      @required this.pontosSaude,
      this.showVoce = false,
      this.position,
      this.positionSaude})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          right: 10,
          bottom: 40,
          child: Container(
            child: Image.asset(
              "assets/$assetImage.png",
              width: 240,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 20,
          bottom: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (showVoce) Text("Você:"),
              Pontuacao(
                  icon: Icons.star,
                  lvl: 5,
                  pontos: "$pontos pontos",
                  posicao: position),
              SizedBox(
                height: 10,
              ),
              Pontuacao(
                icon: Icons.favorite,
                lvl: 5,
                pontos: "$pontosSaude pontos de saúde",
                posicao: positionSaude,
              )
            ],
          ),
        )
      ],
    );
  }
}

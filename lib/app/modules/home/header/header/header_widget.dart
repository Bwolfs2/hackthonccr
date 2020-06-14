import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'header_controller.dart';

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends ModularState<HeaderWidget, HeaderController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Olá,"),
          Text(
            "João Antonio",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              SaldoPontosWidget(
                controller: controller,
              ),
              Spacer(),
              Text(
                "Como você está se\nsentindo agora?",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Modular.to.pushNamed("/diario/meuHumor");
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(
                    FontAwesomeIcons.laugh,
                    color: Colors.green,
                    size: 40,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class SaldoPontosWidget extends StatelessWidget {
  final HeaderController controller;

  const SaldoPontosWidget({Key key, @required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 40,
          width: 160,
          child: PageView(
            controller: controller.pageController,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Saldo de Pontos"),
                  Text(
                    "15.237 Journis",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Pontos Saúde"),
                  Text(
                    "5.570 pontos",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Saldo Carteira"),
                  Text(
                    "R\$ 230,00",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.red),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Observer(
          builder: (_) {
            return Row(
              children: List.generate(
                  3,
                  (index) => Container(
                        height: 4,
                        width: 20,
                        color: controller.selectedPage == index
                            ? Color(0xff2C2400)
                            : Colors.black45,
                        margin: EdgeInsets.only(
                          right: 2,
                          left: 2,
                        ),
                      )),
            );
          },
        )
      ],
    );
  }
}

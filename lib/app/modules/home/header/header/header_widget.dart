import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
              Text("Como você está se\nsentindo agora?"),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black45,
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
                    "15.237 pontos",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Saldo de Stars"),
                  Text(
                    "17 star",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Saldo diamantes"),
                  Text(
                    "230 diamantes",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
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

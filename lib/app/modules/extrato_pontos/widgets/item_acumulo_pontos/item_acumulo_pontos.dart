import 'package:flutter/material.dart';

class ItemAcumuloPontos extends StatelessWidget {
  final int starPoints;
  final int healthPoints;

  final int starPosition;
  final int healthPosition;

  const ItemAcumuloPontos(
      {Key key,
      @required this.starPoints,
      @required this.healthPoints,
      this.starPosition,
      this.healthPosition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircleAvatar(
                    child: Image.asset(
                      "assets/journi_coin.png",
                      width: 40,
                    ),
                    radius: 30,
                    backgroundColor: Colors.black38,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "+ $starPoints",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            if (starPosition != null) Text("$starPosition no ranking")
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Material(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 40,
                      ),
                      radius: 30,
                      backgroundColor: Colors.black38,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "+ $healthPoints",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              if (healthPosition != null) Text("$healthPosition° no ranking")
            ],
          ),
        ),
      ],
    );
  }
}

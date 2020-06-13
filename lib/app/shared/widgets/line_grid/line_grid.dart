import 'package:flutter/material.dart';

class LineGrid extends StatelessWidget {
  final String field01;
  final String field02;
  final String field03;
  final String field04;
  final bool positivo;
  final double thiknesSeparator;

  const LineGrid(
    this.field01,
    this.field02,
    this.field03,
    this.field04,
    this.positivo, {
    Key key,
    this.thiknesSeparator = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              width: 60,
              child: Text(
                field01,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              width: 70,
              child: Text(
                field02,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Expanded(
              child: Text(
                field03,
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.fade,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              width: 40,
              child: Text(
                field04,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 14,
                  color: positivo == null
                      ? Colors.black87
                      : positivo ? Colors.green[200] : Colors.red[200],
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: thiknesSeparator,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final Color color;

  const TitleWidget(this.title, {Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: color == null
            ? TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
            : TextStyle(
                color: color, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

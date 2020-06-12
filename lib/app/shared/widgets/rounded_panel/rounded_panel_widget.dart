import 'package:flutter/material.dart';

class RoundedPanelWidget extends StatelessWidget {
  final Widget child;
  final double width;

  const RoundedPanelWidget({Key key, this.child, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      width: width ?? MediaQuery.of(context).size.width * .9,
      child: child,
    );
  }
}

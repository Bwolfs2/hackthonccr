import 'package:flutter/material.dart';

class SelectableLabel extends StatelessWidget {
  final bool isSelected;
  final String label;
  final Function action;

  const SelectableLabel(
      {Key key,
      this.isSelected = false,
      @required this.label,
      @required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Color(0xff363636) : Color(0xffA0A0A0),
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}

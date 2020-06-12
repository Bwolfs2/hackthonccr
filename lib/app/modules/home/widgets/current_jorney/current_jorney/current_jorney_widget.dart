import 'package:flutter/material.dart';

class CurrentJorneyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "Jornada Atual",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "Porto Alegre/RS - São Paulo/SP",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

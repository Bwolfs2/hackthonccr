import 'package:flutter/material.dart';

class ActionModel {
  final String label;
  final IconData icon;
  final Function() action;
  final bool emBreve;

  ActionModel(this.label, this.icon, this.action, this.emBreve);
}

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'trocar_pontos_controller.g.dart';

class TrocarPontosController = _TrocarPontosControllerBase
    with _$TrocarPontosController;

abstract class _TrocarPontosControllerBase with Store {
  final pageViewController = PageController(initialPage: 0);

  @observable
  int selectedLabel = 0;

  @action
  void setSelectedLabel(int _selectedLabel) {
    selectedLabel = _selectedLabel;
    pageViewController.animateToPage(_selectedLabel,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }
}

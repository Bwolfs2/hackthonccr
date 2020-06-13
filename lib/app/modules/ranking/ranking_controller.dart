import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'ranking_controller.g.dart';

class RankingController = _RankingControllerBase with _$RankingController;

abstract class _RankingControllerBase with Store {
  final pageViewController = PageController(initialPage: 0);

  _RankingControllerBase() {
    init();
  }

  Future<void> init() async {}

  @observable
  String selectedLabel = "Acumulado";

  @action
  void setSelectedLabel(String _selectedLabel) {
    selectedLabel = _selectedLabel;
    switch (_selectedLabel) {
      case "Acumulado":
        pageViewController.jumpToPage(0);
        break;
      case "Mensal":
        pageViewController.jumpToPage(1);
        break;
      default:
    }
  }
}

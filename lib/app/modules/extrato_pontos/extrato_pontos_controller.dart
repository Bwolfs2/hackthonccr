import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'extrato_pontos_controller.g.dart';

class ExtratoPontosController = _ExtratoPontosControllerBase
    with _$ExtratoPontosController;

abstract class _ExtratoPontosControllerBase with Store {
  final pageViewController = PageController(initialPage: 0);

  _ExtratoPontosControllerBase() {
    init();
  }

  Future<void> init() async {}

  @observable
  String selectedLabel = "Hoje";

  @action
  void setSelectedLabel(String _selectedLabel) {
    selectedLabel = _selectedLabel;
    switch (_selectedLabel) {
      case "Hoje":
        pageViewController.jumpToPage(0);
        break;
      case "Semana":
        pageViewController.jumpToPage(1);
        break;
      case "Mês":
        pageViewController.jumpToPage(2);
        break;
      case "Ano":
        pageViewController.jumpToPage(3);
        break;
      default:
    }
  }
}

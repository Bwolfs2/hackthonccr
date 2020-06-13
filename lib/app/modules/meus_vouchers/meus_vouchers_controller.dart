import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'meus_vouchers_controller.g.dart';

class MeusVouchersController = _MeusVouchersControllerBase
    with _$MeusVouchersController;

abstract class _MeusVouchersControllerBase with Store {
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

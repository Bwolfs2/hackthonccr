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

  List<MeuVoucherModel> vouchers = [
    MeuVoucherModel("logos/artboard_1.png", "-10%", "#descontao",
        "Porto Alegre/RS", "12/11"),
    MeuVoucherModel("logos/artboard_2.png", "-35%", "Desconto35",
        "Porto Alegre/RS", "10/08"),
    MeuVoucherModel("logos/artboard_3.png", "-20%", "20MELHORQUE10",
        "São Leopoldo/RS", "08/12"),
  ];

  List<MeuVoucherModel> vouchersUsados = [
    MeuVoucherModel("logos/artboard_1.png", "-20%", "#descontao20",
        "Porto Alegre/RS", "12/01"),
    MeuVoucherModel("logos/artboard_2.png", "-15%", "Desconto15",
        "Porto Alegre/RS", "10/02"),
  ];
}

class MeuVoucherModel {
  final String assetImage;
  final String desconto;
  final String descricao;
  final String cidade;
  final String validade;

  MeuVoucherModel(this.assetImage, this.desconto, this.descricao, this.cidade,
      this.validade);
}

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

  List<ProdutoModel> produtos = [
    ProdutoModel("logos/artboard_1.png", "-10%", "Cavalo Churras",
        "Porto Alegre/RS", "200J"),
    ProdutoModel(
        "logos/artboard_2.png", "-35%", "Ótica Nerd", "Porto Alegre/RS", "50J"),
    ProdutoModel("logos/artboard_3.png", "-20%", "Alameda Automotiv",
        "São Leopoldo/RS", "150J"),
  ];
  List<ProdutoModel> produtosSemDesconto = [
    ProdutoModel(
        "logos/hotel.jpg", null, "2 diárias", "Porto Alegre/RS", "1200J"),
    ProdutoModel("logos/buffet.jpg", null, "Buffet Livre", "Esteio/RS", "500J"),
    ProdutoModel(
        "logos/pizza_2.jpg", null, "3 pizza", "Porto Alegre/RS", "500J")
  ];
}

class ProdutoModel {
  final String assetImage;
  final String desconto;
  final String descricao;
  final String cidade;
  final String pontos;

  ProdutoModel(
      this.assetImage, this.desconto, this.descricao, this.cidade, this.pontos);
}

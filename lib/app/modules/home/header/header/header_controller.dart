import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'header_controller.g.dart';

class HeaderController = _HeaderControllerBase with _$HeaderController;

abstract class _HeaderControllerBase with Store {
  _HeaderControllerBase() {
    init();
  }

  @action
  Future init() async {
    pageController.addListener(() {
      if (pageController.page.ceil() != selectedPage) {
        selectedPage = pageController.page.ceil();
      }
    });
  }

  final pageController = PageController(initialPage: 0);

  @observable
  int selectedPage = 0;
}

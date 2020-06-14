import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobx/mobx.dart';

part 'what_make_u_feel_it_controller.g.dart';

class WhatMakeUFeelItController = _WhatMakeUFeelItControllerBase
    with _$WhatMakeUFeelItController;

abstract class _WhatMakeUFeelItControllerBase with Store {
  final List<WhatMakeUFeelItModel> feelings = <WhatMakeUFeelItModel>[
    WhatMakeUFeelItModel(
      0,
      "Dormir",
      FontAwesomeIcons.bed,
    ),
    WhatMakeUFeelItModel(
      1,
      "Familia",
      FontAwesomeIcons.userFriends,
    ),
    WhatMakeUFeelItModel(
      2,
      "Amigos",
      FontAwesomeIcons.users,
    ),
    WhatMakeUFeelItModel(
      3,
      "Relaxar",
      FontAwesomeIcons.couch,
    ),
    WhatMakeUFeelItModel(
      4,
      "Exercitar",
      FontAwesomeIcons.dumbbell,
    ),
    WhatMakeUFeelItModel(
      5,
      "Comer",
      FontAwesomeIcons.grinStars,
    ),
    WhatMakeUFeelItModel(
      6,
      "Ler",
      FontAwesomeIcons.book,
    ),
    WhatMakeUFeelItModel(
      7,
      "Compras",
      FontAwesomeIcons.shoppingCart,
    ),
    WhatMakeUFeelItModel(
      8,
      "Filme",
      FontAwesomeIcons.tv,
    ),
    WhatMakeUFeelItModel(
      9,
      "Limpeza",
      FontAwesomeIcons.broom,
    ),
    WhatMakeUFeelItModel(
      10,
      "Namorar",
      FontAwesomeIcons.heart,
    ),
    WhatMakeUFeelItModel(
      11,
      "Jogar",
      FontAwesomeIcons.gamepad,
    ),
    WhatMakeUFeelItModel(
      12,
      "Viajar",
      FontAwesomeIcons.route,
    )
  ];

  @observable
  List<int> selecteds = [];

  @action
  void setSelected(int _selected) {
    var index = selecteds.indexOf(_selected);

    if (index >= 0) {
      selecteds.removeAt(index);
    } else {
      selecteds..add(_selected);
    }
    selecteds = [...selecteds];
  }
}

class WhatMakeUFeelItModel {
  final int id;
  final String label;
  final IconData icon;

  WhatMakeUFeelItModel(this.id, this.label, this.icon);
}

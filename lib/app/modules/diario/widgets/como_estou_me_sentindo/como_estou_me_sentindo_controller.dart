import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobx/mobx.dart';

part 'como_estou_me_sentindo_controller.g.dart';

class ComoEstouMeSentindoController = _ComoEstouMeSentindoControllerBase
    with _$ComoEstouMeSentindoController;

abstract class _ComoEstouMeSentindoControllerBase with Store {
  final List<FeelingModel> feelings = <FeelingModel>[
    FeelingModel(
      0,
      "Excelent",
      FontAwesomeIcons.grinStars,
      FontAwesomeIcons.solidGrinStars,
      Color(0xff1CB993),
    ),
    FeelingModel(
      1,
      "Bom",
      FontAwesomeIcons.smile,
      FontAwesomeIcons.solidSmile,
      Color(0xff76BD00),
    ),
    FeelingModel(
      2,
      "Estável",
      FontAwesomeIcons.meh,
      FontAwesomeIcons.solidMeh,
      Color(0xff44A1D5),
    ),
    FeelingModel(
      3,
      "Ruim",
      FontAwesomeIcons.frown,
      FontAwesomeIcons.solidFrown,
      Color(0xffF67B00),
    ),
    FeelingModel(
      4,
      "Terrivel",
      FontAwesomeIcons.dizzy,
      FontAwesomeIcons.solidDizzy,
      Color(0xffF21E1F),
    )
  ];

  @observable
  int selected = -1;

  @action
  void setSelected(int _selected) {
    selected = _selected;
  }
}

class FeelingModel {
  final int id;
  final String label;
  final IconData icon;
  final IconData iconSelected;
  final Color color;

  FeelingModel(this.id, this.label, this.icon, this.iconSelected, this.color);
}

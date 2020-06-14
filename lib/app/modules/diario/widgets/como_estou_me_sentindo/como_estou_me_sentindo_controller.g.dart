// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'como_estou_me_sentindo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ComoEstouMeSentindoController
    on _ComoEstouMeSentindoControllerBase, Store {
  final _$selectedAtom =
      Atom(name: '_ComoEstouMeSentindoControllerBase.selected');

  @override
  int get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(int value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  final _$_ComoEstouMeSentindoControllerBaseActionController =
      ActionController(name: '_ComoEstouMeSentindoControllerBase');

  @override
  void setSelected(int _selected) {
    final _$actionInfo = _$_ComoEstouMeSentindoControllerBaseActionController
        .startAction(name: '_ComoEstouMeSentindoControllerBase.setSelected');
    try {
      return super.setSelected(_selected);
    } finally {
      _$_ComoEstouMeSentindoControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selected: ${selected}
    ''';
  }
}

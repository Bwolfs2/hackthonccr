// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'what_make_u_feel_it_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WhatMakeUFeelItController on _WhatMakeUFeelItControllerBase, Store {
  final _$selectedsAtom =
      Atom(name: '_WhatMakeUFeelItControllerBase.selecteds');

  @override
  List<int> get selecteds {
    _$selectedsAtom.reportRead();
    return super.selecteds;
  }

  @override
  set selecteds(List<int> value) {
    _$selectedsAtom.reportWrite(value, super.selecteds, () {
      super.selecteds = value;
    });
  }

  final _$_WhatMakeUFeelItControllerBaseActionController =
      ActionController(name: '_WhatMakeUFeelItControllerBase');

  @override
  void setSelected(int _selected) {
    final _$actionInfo = _$_WhatMakeUFeelItControllerBaseActionController
        .startAction(name: '_WhatMakeUFeelItControllerBase.setSelected');
    try {
      return super.setSelected(_selected);
    } finally {
      _$_WhatMakeUFeelItControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selecteds: ${selecteds}
    ''';
  }
}

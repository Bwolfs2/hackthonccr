// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indique_ganhe_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IndiqueGanheController on _IndiqueGanheControllerBase, Store {
  final _$valueAtom = Atom(name: '_IndiqueGanheControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_IndiqueGanheControllerBaseActionController =
      ActionController(name: '_IndiqueGanheControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_IndiqueGanheControllerBaseActionController
        .startAction(name: '_IndiqueGanheControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_IndiqueGanheControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}

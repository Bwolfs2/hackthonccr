// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_jorney_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CurrentJorneyController on _CurrentJorneyControllerBase, Store {
  final _$valueAtom = Atom(name: '_CurrentJorneyControllerBase.value');

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

  final _$_CurrentJorneyControllerBaseActionController =
      ActionController(name: '_CurrentJorneyControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_CurrentJorneyControllerBaseActionController
        .startAction(name: '_CurrentJorneyControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CurrentJorneyControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}

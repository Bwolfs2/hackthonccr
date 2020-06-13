// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PagarController on _PagarControllerBase, Store {
  final _$valueAtom = Atom(name: '_PagarControllerBase.value');

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

  final _$_PagarControllerBaseActionController =
      ActionController(name: '_PagarControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_PagarControllerBaseActionController.startAction(
        name: '_PagarControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_PagarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}

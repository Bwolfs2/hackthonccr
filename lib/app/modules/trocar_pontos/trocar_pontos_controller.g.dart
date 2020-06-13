// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trocar_pontos_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TrocarPontosController on _TrocarPontosControllerBase, Store {
  final _$selectedLabelAtom =
      Atom(name: '_TrocarPontosControllerBase.selectedLabel');

  @override
  int get selectedLabel {
    _$selectedLabelAtom.reportRead();
    return super.selectedLabel;
  }

  @override
  set selectedLabel(int value) {
    _$selectedLabelAtom.reportWrite(value, super.selectedLabel, () {
      super.selectedLabel = value;
    });
  }

  final _$_TrocarPontosControllerBaseActionController =
      ActionController(name: '_TrocarPontosControllerBase');

  @override
  void setSelectedLabel(int _selectedLabel) {
    final _$actionInfo = _$_TrocarPontosControllerBaseActionController
        .startAction(name: '_TrocarPontosControllerBase.setSelectedLabel');
    try {
      return super.setSelectedLabel(_selectedLabel);
    } finally {
      _$_TrocarPontosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedLabel: ${selectedLabel}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extrato_pontos_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ExtratoPontosController on _ExtratoPontosControllerBase, Store {
  final _$selectedLabelAtom =
      Atom(name: '_ExtratoPontosControllerBase.selectedLabel');

  @override
  String get selectedLabel {
    _$selectedLabelAtom.reportRead();
    return super.selectedLabel;
  }

  @override
  set selectedLabel(String value) {
    _$selectedLabelAtom.reportWrite(value, super.selectedLabel, () {
      super.selectedLabel = value;
    });
  }

  final _$_ExtratoPontosControllerBaseActionController =
      ActionController(name: '_ExtratoPontosControllerBase');

  @override
  void setSelectedLabel(String _selectedLabel) {
    final _$actionInfo = _$_ExtratoPontosControllerBaseActionController
        .startAction(name: '_ExtratoPontosControllerBase.setSelectedLabel');
    try {
      return super.setSelectedLabel(_selectedLabel);
    } finally {
      _$_ExtratoPontosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedLabel: ${selectedLabel}
    ''';
  }
}

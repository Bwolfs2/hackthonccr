// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meus_vouchers_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MeusVouchersController on _MeusVouchersControllerBase, Store {
  final _$selectedLabelAtom =
      Atom(name: '_MeusVouchersControllerBase.selectedLabel');

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

  final _$_MeusVouchersControllerBaseActionController =
      ActionController(name: '_MeusVouchersControllerBase');

  @override
  void setSelectedLabel(int _selectedLabel) {
    final _$actionInfo = _$_MeusVouchersControllerBaseActionController
        .startAction(name: '_MeusVouchersControllerBase.setSelectedLabel');
    try {
      return super.setSelectedLabel(_selectedLabel);
    } finally {
      _$_MeusVouchersControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedLabel: ${selectedLabel}
    ''';
  }
}

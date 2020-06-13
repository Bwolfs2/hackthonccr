// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RankingController on _RankingControllerBase, Store {
  final _$selectedLabelAtom =
      Atom(name: '_RankingControllerBase.selectedLabel');

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

  final _$_RankingControllerBaseActionController =
      ActionController(name: '_RankingControllerBase');

  @override
  void setSelectedLabel(String _selectedLabel) {
    final _$actionInfo = _$_RankingControllerBaseActionController.startAction(
        name: '_RankingControllerBase.setSelectedLabel');
    try {
      return super.setSelectedLabel(_selectedLabel);
    } finally {
      _$_RankingControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedLabel: ${selectedLabel}
    ''';
  }
}

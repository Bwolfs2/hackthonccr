// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_tile_jornada_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListTileJornadaController on _ListTileJornadaControllerBase, Store {
  final _$expandedAtom = Atom(name: '_ListTileJornadaControllerBase.expanded');

  @override
  bool get expanded {
    _$expandedAtom.reportRead();
    return super.expanded;
  }

  @override
  set expanded(bool value) {
    _$expandedAtom.reportWrite(value, super.expanded, () {
      super.expanded = value;
    });
  }

  final _$_ListTileJornadaControllerBaseActionController =
      ActionController(name: '_ListTileJornadaControllerBase');

  @override
  void toggleExpand() {
    final _$actionInfo = _$_ListTileJornadaControllerBaseActionController
        .startAction(name: '_ListTileJornadaControllerBase.toggleExpand');
    try {
      return super.toggleExpand();
    } finally {
      _$_ListTileJornadaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
expanded: ${expanded}
    ''';
  }
}

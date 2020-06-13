// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jornada_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$JornadaController on _JornadaControllerBase, Store {
  final _$jornadasAtom = Atom(name: '_JornadaControllerBase.jornadas');

  @override
  List<JornadaModel> get jornadas {
    _$jornadasAtom.reportRead();
    return super.jornadas;
  }

  @override
  set jornadas(List<JornadaModel> value) {
    _$jornadasAtom.reportWrite(value, super.jornadas, () {
      super.jornadas = value;
    });
  }

  @override
  String toString() {
    return '''
jornadas: ${jornadas}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStoreBase, Store {
  final _$_prefsAtom = Atom(name: '_AuthStoreBase._prefs');

  @override
  SharedPreferences get _prefs {
    _$_prefsAtom.reportRead();
    return super._prefs;
  }

  @override
  set _prefs(SharedPreferences value) {
    _$_prefsAtom.reportWrite(value, super._prefs, () {
      super._prefs = value;
    });
  }

  final _$isLoggedAtom = Atom(name: '_AuthStoreBase.isLogged');

  @override
  bool get isLogged {
    _$isLoggedAtom.reportRead();
    return super.isLogged;
  }

  @override
  set isLogged(bool value) {
    _$isLoggedAtom.reportWrite(value, super.isLogged, () {
      super.isLogged = value;
    });
  }

  final _$initAsyncAction = AsyncAction('_AuthStoreBase.init');

  @override
  Future<dynamic> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$setLoggedAsyncAction = AsyncAction('_AuthStoreBase.setLogged');

  @override
  Future<dynamic> setLogged(bool _bool) {
    return _$setLoggedAsyncAction.run(() => super.setLogged(_bool));
  }

  @override
  String toString() {
    return '''
isLogged: ${isLogged}
    ''';
  }
}

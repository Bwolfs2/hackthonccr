// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sono_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SonoController on _SonoControllerBase, Store {
  final _$secondsAtom = Atom(name: '_SonoControllerBase.seconds');

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  final _$runningMusicAtom = Atom(name: '_SonoControllerBase.runningMusic');

  @override
  bool get runningMusic {
    _$runningMusicAtom.reportRead();
    return super.runningMusic;
  }

  @override
  set runningMusic(bool value) {
    _$runningMusicAtom.reportWrite(value, super.runningMusic, () {
      super.runningMusic = value;
    });
  }

  final _$updateTimeAsyncAction = AsyncAction('_SonoControllerBase.updateTime');

  @override
  Future updateTime() {
    return _$updateTimeAsyncAction.run(() => super.updateTime());
  }

  final _$_SonoControllerBaseActionController =
      ActionController(name: '_SonoControllerBase');

  @override
  void toggleMusic() {
    final _$actionInfo = _$_SonoControllerBaseActionController.startAction(
        name: '_SonoControllerBase.toggleMusic');
    try {
      return super.toggleMusic();
    } finally {
      _$_SonoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
seconds: ${seconds},
runningMusic: ${runningMusic}
    ''';
  }
}

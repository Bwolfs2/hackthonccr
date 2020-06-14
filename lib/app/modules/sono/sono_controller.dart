import 'package:cloud_audio_player/cloud_audio_player.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'sono_controller.g.dart';

class SonoController = _SonoControllerBase with _$SonoController;

abstract class _SonoControllerBase extends Disposable with Store {
  var disposed = false;
  _SonoControllerBase() {
    updateTime();
  }

  final _player = CloudAudioPlayer();

  @action
  updateTime() async {
    if (disposed) {
      return;
    }
    await Future.delayed(Duration(seconds: 1));
    seconds++;
    updateTime();
  }

  @observable
  int seconds = 0;

  @observable
  bool runningMusic = false;

  @action
  void toggleMusic() {
    runningMusic = !runningMusic;
    if (runningMusic) {
      _player.play(
          "https://file-examples.com/wp-content/uploads/2017/11/file_example_MP3_5MG.mp3");
    } else {
      _player.stop();
      _player.resume();
    }
  }

  void dispose() {
    disposed = true;
    _player.stop();
    _player.resume();
  }
}

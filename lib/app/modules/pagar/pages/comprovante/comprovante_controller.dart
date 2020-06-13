import 'package:mobx/mobx.dart';

part 'comprovante_controller.g.dart';

class ComprovanteController = _ComprovanteControllerBase
    with _$ComprovanteController;

abstract class _ComprovanteControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

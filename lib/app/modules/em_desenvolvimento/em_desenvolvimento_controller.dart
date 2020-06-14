import 'package:mobx/mobx.dart';

part 'em_desenvolvimento_controller.g.dart';

class EmDesenvolvimentoController = _EmDesenvolvimentoControllerBase
    with _$EmDesenvolvimentoController;

abstract class _EmDesenvolvimentoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

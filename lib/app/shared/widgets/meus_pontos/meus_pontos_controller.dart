import 'package:mobx/mobx.dart';

part 'meus_pontos_controller.g.dart';

class MeusPontosController = _MeusPontosControllerBase
    with _$MeusPontosController;

abstract class _MeusPontosControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

import 'package:mobx/mobx.dart';

part 'meu_humor_controller.g.dart';

class MeuHumorController = _MeuHumorControllerBase with _$MeuHumorController;

abstract class _MeuHumorControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

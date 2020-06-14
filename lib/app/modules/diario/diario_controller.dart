import 'package:mobx/mobx.dart';

part 'diario_controller.g.dart';

class DiarioController = _DiarioControllerBase with _$DiarioController;

abstract class _DiarioControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

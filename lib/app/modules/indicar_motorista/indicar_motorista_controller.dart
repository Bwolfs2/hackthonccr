import 'package:mobx/mobx.dart';

part 'indicar_motorista_controller.g.dart';

class IndicarMotoristaController = _IndicarMotoristaControllerBase
    with _$IndicarMotoristaController;

abstract class _IndicarMotoristaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

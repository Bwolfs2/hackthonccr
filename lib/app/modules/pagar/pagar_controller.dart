import 'package:mobx/mobx.dart';

part 'pagar_controller.g.dart';

class PagarController = _PagarControllerBase with _$PagarController;

abstract class _PagarControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

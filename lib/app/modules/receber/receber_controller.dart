import 'package:mobx/mobx.dart';

part 'receber_controller.g.dart';

class ReceberController = _ReceberControllerBase with _$ReceberController;

abstract class _ReceberControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

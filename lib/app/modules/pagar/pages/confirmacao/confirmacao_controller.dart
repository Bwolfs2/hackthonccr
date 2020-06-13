import 'package:mobx/mobx.dart';

part 'confirmacao_controller.g.dart';

class ConfirmacaoController = _ConfirmacaoControllerBase
    with _$ConfirmacaoController;

abstract class _ConfirmacaoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

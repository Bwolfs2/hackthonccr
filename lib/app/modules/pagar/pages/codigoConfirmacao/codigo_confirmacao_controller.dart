import 'package:mobx/mobx.dart';

part 'codigo_confirmacao_controller.g.dart';

class CodigoConfirmacaoController = _CodigoConfirmacaoControllerBase
    with _$CodigoConfirmacaoController;

abstract class _CodigoConfirmacaoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

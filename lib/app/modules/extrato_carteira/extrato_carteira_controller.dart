import 'package:mobx/mobx.dart';

part 'extrato_carteira_controller.g.dart';

class ExtratoCarteiraController = _ExtratoCarteiraControllerBase
    with _$ExtratoCarteiraController;

abstract class _ExtratoCarteiraControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

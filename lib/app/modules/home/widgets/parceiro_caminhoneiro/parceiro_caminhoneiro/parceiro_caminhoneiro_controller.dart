import 'package:mobx/mobx.dart';

part 'parceiro_caminhoneiro_controller.g.dart';

class ParceiroCaminhoneiroController = _ParceiroCaminhoneiroControllerBase
    with _$ParceiroCaminhoneiroController;

abstract class _ParceiroCaminhoneiroControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

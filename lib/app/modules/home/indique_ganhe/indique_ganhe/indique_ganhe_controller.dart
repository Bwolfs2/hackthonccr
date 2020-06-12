import 'package:mobx/mobx.dart';

part 'indique_ganhe_controller.g.dart';

class IndiqueGanheController = _IndiqueGanheControllerBase
    with _$IndiqueGanheController;

abstract class _IndiqueGanheControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

import 'package:mobx/mobx.dart';

part 'current_jorney_controller.g.dart';

class CurrentJorneyController = _CurrentJorneyControllerBase
    with _$CurrentJorneyController;

abstract class _CurrentJorneyControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

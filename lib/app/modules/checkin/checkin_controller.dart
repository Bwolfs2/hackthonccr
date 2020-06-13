import 'package:mobx/mobx.dart';

part 'checkin_controller.g.dart';

class CheckinController = _CheckinControllerBase with _$CheckinController;

abstract class _CheckinControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

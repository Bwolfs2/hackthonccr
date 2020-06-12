import 'package:mobx/mobx.dart';

part 'body_logged_controller.g.dart';

class BodyLoggedController = _BodyLoggedControllerBase
    with _$BodyLoggedController;

abstract class _BodyLoggedControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

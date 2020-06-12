import 'package:mobx/mobx.dart';

part 'group_actions_controller.g.dart';

class GroupActionsController = _GroupActionsControllerBase
    with _$GroupActionsController;

abstract class _GroupActionsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

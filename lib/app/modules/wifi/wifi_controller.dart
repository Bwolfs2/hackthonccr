import 'package:mobx/mobx.dart';

part 'wifi_controller.g.dart';

class WifiController = _WifiControllerBase with _$WifiController;

abstract class _WifiControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  _AppControllerBase() {
    init();
  }

  Future init() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    await shared.setBool("first_open", true);
  }
}

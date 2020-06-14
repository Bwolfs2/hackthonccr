import 'package:mobx/mobx.dart';

import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  _AuthStoreBase() {
    init();
  }

  @observable
  SharedPreferences _prefs;

  @action
  Future init() async {
    _prefs = await SharedPreferences.getInstance();
    var isLo = _prefs.getBool("logged");
    if (isLo == null) {
      _prefs.setBool('logged', true);
    }
    isLogged = isLo ?? true;
  }

  @observable
  bool isLogged = true;

  @action
  Future setLogged(bool _bool) async {
    await _prefs.setBool("logged", _bool);
    isLogged = _prefs.getBool("logged");
  }
}

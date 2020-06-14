import 'package:hackthonccr/app/shared/stores/auth_store.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final AuthStore _authStore;

  _HomeControllerBase(this._authStore);

  @computed
  bool get isLogged => _authStore.isLogged;

  @action
  void logoff() {
    _authStore.setLogged(false);
  }
}

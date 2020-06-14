import 'package:hackthonccr/app/shared/stores/auth_store.dart';
import 'package:mobx/mobx.dart';

part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final AuthStore _authStore;

  _AuthControllerBase(this._authStore);

  @computed
  bool get isLogged => _authStore.isLogged;

  @action
  void setLogged(bool _bool) {
    _authStore.setLogged(_bool);
  }
}

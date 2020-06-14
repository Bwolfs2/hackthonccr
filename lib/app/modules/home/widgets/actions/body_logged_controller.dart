import 'package:hackthonccr/app/shared/stores/auth_store.dart';
import 'package:mobx/mobx.dart';

part 'body_logged_controller.g.dart';

class BodyLoggedController = _BodyLoggedControllerBase
    with _$BodyLoggedController;

abstract class _BodyLoggedControllerBase with Store {
  final AuthStore _authStore;
  _BodyLoggedControllerBase(this._authStore);

  @computed
  bool get isLogged => _authStore.isLogged;
}

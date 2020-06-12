import 'package:mobx/mobx.dart';

part 'ranking_controller.g.dart';

class RankingController = _RankingControllerBase with _$RankingController;

abstract class _RankingControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}

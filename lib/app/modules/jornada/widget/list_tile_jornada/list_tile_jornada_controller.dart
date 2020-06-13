import 'package:mobx/mobx.dart';

part 'list_tile_jornada_controller.g.dart';

class ListTileJornadaController = _ListTileJornadaControllerBase
    with _$ListTileJornadaController;

abstract class _ListTileJornadaControllerBase with Store {
  @observable
  bool expanded = false;

  @action
  void toggleExpand() {
    expanded = !expanded;
  }
}

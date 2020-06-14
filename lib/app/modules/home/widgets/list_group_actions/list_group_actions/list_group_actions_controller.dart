import 'package:expandable/expandable.dart';
import 'package:mobx/mobx.dart';

part 'list_group_actions_controller.g.dart';

class ListGroupActionsController = _ListGroupActionsControllerBase
    with _$ListGroupActionsController;

abstract class _ListGroupActionsControllerBase with Store {
  final expandController = ExpandableController(initialExpanded: true);
}

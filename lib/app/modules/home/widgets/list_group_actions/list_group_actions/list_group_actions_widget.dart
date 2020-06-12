import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackthonccr/app/modules/home/widgets/group_actions/group_actions/group_actions_widget.dart';

import 'list_group_actions_controller.dart';

class ListGroupActionsWidget extends StatefulWidget {
  final List<GroupActionsWidget> groups;

  const ListGroupActionsWidget({Key key, @required this.groups})
      : super(key: key);

  @override
  _ListGroupActionsWidgetState createState() => _ListGroupActionsWidgetState();
}

class _ListGroupActionsWidgetState
    extends ModularState<ListGroupActionsWidget, ListGroupActionsController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePanel(
          theme: ExpandableThemeData(
            alignment: Alignment.topCenter,
            collapseIcon: Icons.ac_unit,
            expandIcon: Icons.accessibility,
            hasIcon: false,
          ),
          header: IconButton(
            onPressed: () {
              controller.expandController.toggle();
              setState(() {});
            },
            icon: controller.expandController.expanded
                ? Icon(Icons.arrow_drop_up, size: 40)
                : Icon(Icons.arrow_drop_down, size: 40),
          ),
          controller: controller.expandController,
          expanded: Column(
            children: [
              // IconButton(
              //   onPressed: () {
              //     controller.expandController.toggle();
              //     setState(() {});
              //   },
              //   icon: controller.expandController.expanded
              //       ? Icon(Icons.arrow_drop_up, size: 40)
              //       : Icon(Icons.arrow_drop_down, size: 40),
              // ),
              ...widget.groups
            ],
          ),
        ),
      ],
    );
  }
}

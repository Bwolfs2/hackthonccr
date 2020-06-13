import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          header: Column(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  controller.expandController.toggle();
                  setState(() {});
                },
                child: controller.expandController.expanded
                    ? Column(
                        children: <Widget>[
                          Text("Toque para ver menos opções"),
                          Icon(FontAwesomeIcons.chevronUp, size: 25),
                        ],
                      )
                    : Column(
                        children: <Widget>[
                          Text("Toque para ver mais opções"),
                          Icon(FontAwesomeIcons.chevronDown, size: 25),
                        ],
                      ),
              ),
            ],
          ),
          controller: controller.expandController,
          expanded: Column(
            children: [...widget.groups],
          ),
        ),
      ],
    );
  }
}

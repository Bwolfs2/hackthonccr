import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hackthonccr/app/modules/home/models/action_model.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';

class GroupActionsWidget extends StatelessWidget {
  final String title;
  final List<ActionModel> itemsActions;

  const GroupActionsWidget(
      {Key key, @required this.title, @required this.itemsActions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TitleWidget(title, color: Colors.red),
          GridView.builder(
            itemCount: itemsActions?.length ?? 0,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: .8,
            ),
            itemBuilder: (context, index) {
              var actionModel = itemsActions[index];

              return GestureDetector(
                onTap: actionModel.action,
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(
                          actionModel.icon,
                          color: Colors.black87,
                          size: 25,
                        ),
                        backgroundColor: Colors.black26,
                        radius: 25,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AutoSizeText(
                        actionModel.label,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

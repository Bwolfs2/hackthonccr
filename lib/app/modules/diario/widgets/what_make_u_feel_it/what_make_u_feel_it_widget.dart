import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hackthonccr/app/modules/diario/widgets/what_make_u_feel_it/what_make_u_feel_it_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class WhatMakeUFeelItWidget extends StatefulWidget {
  @override
  _WhatMakeUFeelItWidgetState createState() => _WhatMakeUFeelItWidgetState();
}

class _WhatMakeUFeelItWidgetState
    extends ModularState<WhatMakeUFeelItWidget, WhatMakeUFeelItController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            alignment: WrapAlignment.center,
            children: controller.feelings
                .map((item) => WhatMakeUFeelItItem(
                    item: item,
                    selected: controller.selecteds.contains(item.id),
                    onTap: () => controller.setSelected(item.id)))
                .toList(),
          ),
        );
      },
    );
  }
}

class WhatMakeUFeelItItem extends StatelessWidget {
  final WhatMakeUFeelItModel item;
  final bool selected;
  final Function onTap;

  const WhatMakeUFeelItItem(
      {Key key, this.item, this.selected = false, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(2),
                  alignment: Alignment.center,
                  width: 56,
                  height: 56,
                  decoration: selected
                      ? BoxDecoration(
                          color: Color(0xff76BD00),
                          borderRadius: BorderRadius.circular(100),
                        )
                      : BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            width: 1,
                            color: Color(0xff76BD00),
                          ),
                        ),
                ),
                Icon(
                  item.icon,
                  color: selected ? Colors.white : Color(0xff76BD00),
                  size: 25,
                ),
              ],
            ),
            Text(
              item.label,
              style: TextStyle(color: Color(0xff76BD00), fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

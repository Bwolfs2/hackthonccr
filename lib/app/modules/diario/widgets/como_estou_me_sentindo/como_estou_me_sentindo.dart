import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'como_estou_me_sentindo_controller.dart';

class ComoEstouMeSentindo extends StatefulWidget {
  @override
  _ComoEstouMeSentindoState createState() => _ComoEstouMeSentindoState();
}

class _ComoEstouMeSentindoState
    extends ModularState<ComoEstouMeSentindo, ComoEstouMeSentindoController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: controller.feelings
                .map((item) => FeelItem(
                    item: item,
                    selected: item.id == controller.selected,
                    onTap: () => controller.setSelected(item.id)))
                .toList(),
          ),
        );
      },
    );
  }
}

class FeelItem extends StatelessWidget {
  final FeelingModel item;
  final bool selected;
  final Function onTap;

  const FeelItem({Key key, this.item, this.selected = false, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          width: 5,
                          color: item.color,
                        ))
                    : null,
              ),
              Positioned(
                bottom: 10,
                child: Icon(
                  selected ? item.iconSelected : item.icon,
                  color: item.color,
                  size: 40,
                ),
              ),
            ],
          ),
          Text(
            item.label,
            style: TextStyle(color: item.color, fontSize: 16),
          )
        ],
      ),
    );
  }
}

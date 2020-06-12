import 'package:flutter/material.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';

class ParceiroCaminhoneiroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleWidget(
            "Parceiro Caminhoneiro",
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child:
                Text("Selecionados especialmente para melhorar a sua jornada"),
          ),
          SizedBox(
            height: 30,
          ),
          GridView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            children: <Widget>[
              ItemParceiroCaminhoneiro(
                icon: Icons.account_box,
                label: "Abastecer",
              ),
              ItemParceiroCaminhoneiro(
                icon: Icons.account_box,
                label: "Dormir",
              ),
              ItemParceiroCaminhoneiro(
                icon: Icons.account_box,
                label: "Relaxar",
              ),
              ItemParceiroCaminhoneiro(
                icon: Icons.account_box,
                label: "Estacionar",
              ),
              ItemParceiroCaminhoneiro(
                icon: Icons.account_box,
                label: "Alimentar",
              ),
              ItemParceiroCaminhoneiro(
                icon: Icons.account_box,
                label: "Exercitar",
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "João Antonio,",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Posso te ajudar?",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  child: Icon(Icons.phone_in_talk),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemParceiroCaminhoneiro extends StatelessWidget {
  final IconData icon;
  final String label;

  const ItemParceiroCaminhoneiro(
      {Key key, @required this.icon, @required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CircleAvatar(
            child: Icon(icon),
            radius: 30,
          ),
          SizedBox(
            height: 10,
          ),
          Text(label)
        ],
      ),
    );
  }
}

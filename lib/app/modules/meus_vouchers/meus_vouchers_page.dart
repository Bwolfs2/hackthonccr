import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackthonccr/app/shared/widgets/meus_pontos/meus_pontos_widget.dart';
import 'package:hackthonccr/app/shared/widgets/rounded_panel/rounded_panel_widget.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';
import 'meus_vouchers_controller.dart';

class MeusVouchersPage extends StatefulWidget {
  final String title;
  const MeusVouchersPage({Key key, this.title = "Meus Vouchers"})
      : super(key: key);

  @override
  _MeusVouchersPageState createState() => _MeusVouchersPageState();
}

class _MeusVouchersPageState
    extends ModularState<MeusVouchersPage, MeusVouchersController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            centerTitle: true,
            title: Text(
              widget.title,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            expandedHeight: 270.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    bottom: -20,
                    child: Container(
                      child: Image.asset(
                        "assets/discount.png",
                        width: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Not affecting the question.
          SliverToBoxAdapter(
            child: Material(
              color: Theme.of(context).primaryColor,
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * .67,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color(0xffF5F6FA),
                ),
                child: Column(
                  children: <Widget>[
                    Observer(
                      builder: (BuildContext context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * .4,
                              child: RaisedButton(
                                onPressed: () {
                                  controller.setSelectedLabel(0);
                                },
                                color: controller.selectedLabel == 0
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "Ativos",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * .4,
                              child: RaisedButton(
                                onPressed: () {
                                  controller.setSelectedLabel(1);
                                },
                                color: controller.selectedLabel == 1
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "Usados",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    Container(
                      height: 340,
                      child: PageView(
                        controller: controller.pageViewController,
                        physics: NeverScrollableScrollPhysics(),
                        children: <Widget>[
                          RoundedPanelWidget(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      child: Expanded(
                                        child: TitleWidget(
                                            "Toque para Abrir\n o QrCode"),
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.filter,
                                        size: 15,
                                      ),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                                Container(
                                  height: 190,
                                  child: ListView.builder(
                                    itemCount: 3,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return VouchersWidget();
                                    },
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    FlatButton(
                                      onPressed: () {},
                                      child: Text("Ver Todos"),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          RoundedPanelWidget(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      child: Expanded(
                                        child: TitleWidget("Vouchers Usados"),
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.filter,
                                        size: 15,
                                      ),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                                Container(
                                  height: 190,
                                  child: ListView.builder(
                                    itemCount: 3,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return VouchersWidget(ativo: false);
                                    },
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    FlatButton(
                                      onPressed: () {},
                                      child: Text("Ver Todos"),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VouchersWidget extends StatelessWidget {
  final bool ativo;

  const VouchersWidget({Key key, this.ativo = true}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * .23,
          height: MediaQuery.of(context).size.width * .23,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.bottomCenter,
          child: Text(
            "-10%",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text("Peças do Joao"),
        Text("São Paulo/Sp"),
        if (ativo)
          Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.brown,
                ),
                child: Text(
                  "Ativo",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 12),
                ),
              ),
            ],
          ),
        SizedBox(
          height: 5,
        ),
        Text(
          "valido até 08/12",
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}

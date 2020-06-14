import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackthonccr/app/shared/widgets/rounded_panel/rounded_panel_widget.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';

import 'diario_controller.dart';

class DiarioPage extends StatefulWidget {
  final String title;
  const DiarioPage({Key key, this.title = "Diario"}) : super(key: key);

  @override
  _DiarioPageState createState() => _DiarioPageState();
}

class _DiarioPageState extends ModularState<DiarioPage, DiarioController> {
  //use 'controller' variable to access controller
  var data = [2.0, 3.0, 2.0, 2.0, 3.0, 0.0, 1.0, 4.0, 3.0, 1.0, 2.0, 0.0, 1.0];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
                            "assets/confirmed.png",
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
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Aproveite, e ganhe pontos ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'fazendo check-in\n nos locais parceiros',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        RoundedPanelWidget(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * .5,
                                child: TitleWidget(
                                    "Escanear QRCode\npara Conectar-se"),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                      width: 300.0,
                                      height: 150.0,
                                      margin: EdgeInsets.only(
                                          left: 30, right: 10, bottom: 10),
                                      child: Sparkline(
                                        data: data,
                                        lineGradient: LinearGradient(
                                          colors: data.map((e) {
                                            if (e < 1) {
                                              return Color(0xffF67B00);
                                            }
                                            if (e < 2) {
                                              return Color(0xffF67B00);
                                            }
                                            if (e < 3) {
                                              return Color(0xff44A1D5);
                                            }
                                            if (e < 4) {
                                              return Color(0xff76BD00);
                                            }
                                            return Color(0xff1CB993);
                                          }).toList(),
                                        ),
                                        //pointsMode: PointsMode.last,
                                        pointSize: 5,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: 30,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xff1CB993)
                                                .withOpacity(.05),
                                            border: Border(
                                              bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xff1CB993)
                                                    .withOpacity(.6),
                                              ),
                                            ),
                                          ),
                                          child: Icon(
                                            FontAwesomeIcons.grinStars,
                                            color: Color(0xff1CB993),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: 30,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xff76BD00)
                                                .withOpacity(.05),
                                            border: Border(
                                              bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xff76BD00)
                                                    .withOpacity(.6),
                                              ),
                                            ),
                                          ),
                                          child: Icon(
                                            FontAwesomeIcons.smile,
                                            color: Color(0xff76BD00),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: 30,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xff44A1D5)
                                                .withOpacity(.05),
                                            border: Border(
                                              bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xff44A1D5)
                                                    .withOpacity(.6),
                                              ),
                                            ),
                                          ),
                                          child: Icon(
                                            FontAwesomeIcons.meh,
                                            color: Color(0xff44A1D5),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: 30,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xffF67B00)
                                                .withOpacity(.05),
                                            border: Border(
                                              bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffF67B00)
                                                    .withOpacity(.6),
                                              ),
                                            ),
                                          ),
                                          child: Icon(
                                            FontAwesomeIcons.frown,
                                            color: Color(0xffF67B00),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          height: 30,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xffF21E1F)
                                                .withOpacity(.05),
                                            border: Border(
                                              bottom: BorderSide(
                                                width: 1,
                                                color: Color(0xffF21E1F)
                                                    .withOpacity(.6),
                                              ),
                                            ),
                                          ),
                                          child: Icon(
                                            FontAwesomeIcons.dizzy,
                                            color: Color(0xffF21E1F),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "*Dados do Mês",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Theme.of(context).primaryColor,
                            onPressed: () {},
                            child: Text(
                              "Detalhar",
                              style: TextStyle(fontSize: 24),
                            ),
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
        ),
        Positioned(
          right: 20,
          bottom: 20,
          child: FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () {
              Modular.link.pushNamed("/meuHumor");
            },
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}

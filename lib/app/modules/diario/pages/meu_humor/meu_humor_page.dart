import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackthonccr/app/modules/diario/widgets/como_estou_me_sentindo/como_estou_me_sentindo.dart';
import 'package:hackthonccr/app/modules/diario/widgets/what_make_u_feel_it/what_make_u_feel_it_widget.dart';
import 'package:hackthonccr/app/shared/widgets/title/title_widget.dart';
import 'meu_humor_controller.dart';

class MeuHumorPage extends StatefulWidget {
  final String title;
  const MeuHumorPage({Key key, this.title = "Meu Humor"}) : super(key: key);

  @override
  _MeuHumorPageState createState() => _MeuHumorPageState();
}

class _MeuHumorPageState
    extends ModularState<MeuHumorPage, MeuHumorController> {
  //use 'controller' variable to access controller

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
            expandedHeight: 70,
          ),
          SliverToBoxAdapter(
            child: Material(
              color: Theme.of(context).primaryColor,
              child: Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * .9,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Color(0xffF5F6FA),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TitleWidget("Como você está se sentindo?"),
                    ComoEstouMeSentindo(),
                    SizedBox(
                      height: 10,
                    ),
                    TitleWidget("O que te fez se sentir assim?"),
                    WhatMakeUFeelItWidget(),
                    SizedBox(
                      height: 10,
                    ),
                    TitleWidget("Conte mais como foi seu dia:"),
                    TextFormField(
                      maxLines: 10,
                      minLines: 4,
                      decoration: InputDecoration(
                        hintText: "Meu dia foi...",
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff76BD00), width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff76BD00), width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff76BD00), width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () => Modular.to.popUntil(
                          ModalRoute.withName("/"),
                        ),
                        child: Text(
                          "FINALIZAR",
                          style: TextStyle(fontSize: 22),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'jornada_controller.dart';
import 'widget/list_tile_jornada/list_tile_jornada_widget.dart';

class JornadaPage extends StatefulWidget {
  final String title;
  const JornadaPage({Key key, this.title = "Jornada"}) : super(key: key);

  @override
  _JornadaPageState createState() => _JornadaPageState();
}

class _JornadaPageState extends ModularState<JornadaPage, JornadaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Modular.link.pushNamed("/criarJornadaPage");
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * .86,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Color(0xffF5F6FA),
        ),
        child: ListView.separated(
          itemCount: controller.jornadas.length,
          itemBuilder: (BuildContext context, int index) {
            var current = controller.jornadas[index];
            return ListTileJornadaWidget(
              dataIni: current.dataInicial,
              dataDestino: current.dataFinal,
              cidadeIni: current.cidadeInicial,
              cidadeDestino: current.cidadeFinal,
              distancia: current.distancia,
              paradas: current.paradas,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10,
            );
          },
        ),
      ),
    );
  }
}

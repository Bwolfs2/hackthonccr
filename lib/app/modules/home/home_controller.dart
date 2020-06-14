import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackthonccr/app/shared/stores/auth_store.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final AuthStore _authStore;

  _HomeControllerBase(this._authStore) {
    init();
  }

  @computed
  bool get isLogged => _authStore.isLogged;

  @action
  void logoff() {
    _authStore.setLogged(false);
  }

  Future init() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    var first_open = shared.get('first_open');
    if (first_open ?? true) {
      shared.setBool('first_open', false);
      asuka.showDialog(builder: (_context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(
                FontAwesomeIcons.exclamationTriangle,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Atenção",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          content: Text(
            "Este é um Projeto criado para o Hackathon da CCR.\n\nNão é recomendado que se dirija utilizando o aplicativo.\nVocê está dirigindo ou é um passageiro?",
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.of(_context).pop();
              },
              child: Text(
                "Estou ciente",
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            )
          ],
        );
      });
    }
  }
}

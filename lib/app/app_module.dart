import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackthonccr/app/app_widget.dart';
import 'package:hackthonccr/app/modules/home/home_module.dart';
import 'package:hasura_connect/hasura_connect.dart';

import 'app_controller.dart';
import 'modules/extrato_pontos/extrato_pontos_module.dart';
import 'modules/indicar_motorista/indicar_motorista_module.dart';
import 'modules/ranking/ranking_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind(
          (i) => AppController(),
        ),
        Bind(
          (i) => HasuraConnect("http://hackthonccr.herokuapp.com/v1/graphql"),
        ),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router("/extratoPontos", module: ExtratoPontosModule()),
        Router("/indicarMotorista", module: IndicarMotoristaModule()),
        Router("/ranking", module: RankingModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

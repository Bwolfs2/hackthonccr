import 'pages/meu_humor/meu_humor_controller.dart';
import 'pages/meu_humor/meu_humor_page.dart';
import 'widgets/what_make_u_feel_it/what_make_u_feel_it_controller.dart';
import 'diario_controller.dart';
import 'repositories/diario_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'diario_page.dart';
import 'widgets/como_estou_me_sentindo/como_estou_me_sentindo_controller.dart';

class DiarioModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MeuHumorController()),
        Bind((i) => WhatMakeUFeelItController()),
        Bind((i) => WhatMakeUFeelItController()),
        Bind((i) => ComoEstouMeSentindoController()),
        Bind((i) => DiarioController()),
        Bind((i) => DiarioRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => DiarioPage()),
        Router("/meuHumor", child: (_, args) => MeuHumorPage()),
      ];

  static Inject get to => Inject<DiarioModule>.of();
}

import 'pages/criar_jornada/criar_jornada_controller.dart';
import 'pages/criar_jornada/criar_jornada_page.dart';
import 'widget/list_tile_jornada/list_tile_jornada_controller.dart';
import 'repositories/jornada_repository.dart';
import 'jornada_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'jornada_page.dart';

class JornadaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CriarJornadaController()),
        Bind((i) => ListTileJornadaController(), singleton: false),
        Bind((i) => JornadaRepository(Dio())),
        Bind((i) => JornadaController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => JornadaPage()),
        Router("/criarJornadaPage", child: (_, args) => CriarJornadaPage()),
      ];

  static Inject get to => Inject<JornadaModule>.of();
}

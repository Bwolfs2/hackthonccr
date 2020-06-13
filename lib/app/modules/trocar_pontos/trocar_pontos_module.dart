import 'trocar_pontos_controller.dart';
import 'repositories/trocar_pontos_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'trocar_pontos_page.dart';

class TrocarPontosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TrocarPontosController()),
        Bind((i) => TrocarPontosRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => TrocarPontosPage()),
      ];

  static Inject get to => Inject<TrocarPontosModule>.of();
}

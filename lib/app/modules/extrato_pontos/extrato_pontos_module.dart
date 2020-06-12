import 'extrato_pontos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'extrato_pontos_page.dart';

class ExtratoPontosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ExtratoPontosController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ExtratoPontosPage()),
      ];

  static Inject get to => Inject<ExtratoPontosModule>.of();
}

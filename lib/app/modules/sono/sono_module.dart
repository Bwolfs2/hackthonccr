import 'sono_controller.dart';
import 'repositories/sono_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'sono_page.dart';

class SonoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SonoController()),
        Bind((i) => SonoRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SonoPage()),
      ];

  static Inject get to => Inject<SonoModule>.of();
}

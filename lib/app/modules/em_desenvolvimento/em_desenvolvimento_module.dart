import 'em_desenvolvimento_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'em_desenvolvimento_page.dart';

class EmDesenvolvimentoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => EmDesenvolvimentoController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => EmDesenvolvimentoPage()),
      ];

  static Inject get to => Inject<EmDesenvolvimentoModule>.of();
}

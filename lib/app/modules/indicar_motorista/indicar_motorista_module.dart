import 'indicar_motorista_controller.dart';
import 'repositories/indicar_motorista_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'indicar_motorista_page.dart';

class IndicarMotoristaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => IndicarMotoristaController()),
        Bind((i) => IndicarMotoristaRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => IndicarMotoristaPage()),
      ];

  static Inject get to => Inject<IndicarMotoristaModule>.of();
}

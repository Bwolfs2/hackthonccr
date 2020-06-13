import 'extrato_carteira_controller.dart';
import 'repositories/extrato_carteira_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'extrato_carteira_page.dart';

class ExtratoCarteiraModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ExtratoCarteiraController()),
        Bind((i) => ExtratoCarteiraRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ExtratoCarteiraPage()),
      ];

  static Inject get to => Inject<ExtratoCarteiraModule>.of();
}

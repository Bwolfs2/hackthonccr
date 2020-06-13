import 'receber_controller.dart';
import 'repositories/receber_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'receber_page.dart';

class ReceberModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ReceberController()),
        Bind((i) => ReceberRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ReceberPage()),
      ];

  static Inject get to => Inject<ReceberModule>.of();
}

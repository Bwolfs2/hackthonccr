import 'wifi_controller.dart';
import 'repositories/wifi_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'wifi_page.dart';

class WifiModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => WifiController()),
        Bind((i) => WifiRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => WifiPage()),
      ];

  static Inject get to => Inject<WifiModule>.of();
}

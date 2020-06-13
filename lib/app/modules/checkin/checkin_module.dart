import 'checkin_controller.dart';
import 'repositories/checkin_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'checkin_page.dart';

class CheckinModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CheckinController()),
        Bind((i) => CheckinRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => CheckinPage()),
      ];

  static Inject get to => Inject<CheckinModule>.of();
}

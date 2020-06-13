import 'meus_vouchers_controller.dart';
import 'repositories/meus_vouchers_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'meus_vouchers_page.dart';

class MeusVouchersModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MeusVouchersController()),
        Bind((i) => MeusVouchersRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => MeusVouchersPage()),
      ];

  static Inject get to => Inject<MeusVouchersModule>.of();
}

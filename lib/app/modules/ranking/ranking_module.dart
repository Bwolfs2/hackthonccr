import 'ranking_controller.dart';
import 'repositories/ranking_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'ranking_page.dart';

class RankingModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RankingController()),
        Bind((i) => RankingRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => RankingPage()),
      ];

  static Inject get to => Inject<RankingModule>.of();
}

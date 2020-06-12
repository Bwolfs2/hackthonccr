import 'header/header/header_controller.dart';
import 'indique_ganhe/indique_ganhe/indique_ganhe_controller.dart';
import 'widgets/parceiro_caminhoneiro/parceiro_caminhoneiro/parceiro_caminhoneiro_controller.dart';
import 'widgets/list_group_actions/list_group_actions/list_group_actions_controller.dart';
import 'widgets/group_actions/group_actions/group_actions_controller.dart';
import 'widgets/current_jorney/current_jorney/current_jorney_controller.dart';
import 'package:hasura_connect/hasura_connect.dart';

import 'repositories/publicity/publicity_repository.dart';
import 'widgets/publicity_images_carrousel/publicity_images_carrousel/publicity_images_carrousel_controller.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_page.dart';
import 'widgets/actions/body_logged_controller.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HeaderController()),
        Bind((i) => IndiqueGanheController()),
        Bind((i) => ParceiroCaminhoneiroController()),
        Bind((i) => ListGroupActionsController()),
        Bind((i) => GroupActionsController()),
        Bind((i) => CurrentJorneyController()),
        Bind((i) => PublicityRepository(i.get<HasuraConnect>())),
        Bind((i) =>
            PublicityImagesCarrouselController(i.get<PublicityRepository>())),
        Bind((i) => BodyLoggedController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}

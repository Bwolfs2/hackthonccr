import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackthonccr/app/app_widget.dart';
import 'package:hackthonccr/app/modules/home/home_module.dart';
import 'package:hasura_connect/hasura_connect.dart';

import 'app_controller.dart';
import 'modules/checkin/checkin_module.dart';
import 'modules/extrato_pontos/extrato_pontos_module.dart';
import 'modules/indicar_motorista/indicar_motorista_module.dart';
import 'modules/jornada/jornada_module.dart';
import 'modules/meus_vouchers/meus_vouchers_module.dart';
import 'modules/ranking/ranking_module.dart';
import 'modules/sono/sono_module.dart';
import 'modules/trocar_pontos/trocar_pontos_module.dart';
import 'modules/pagar/pagar_module.dart';
import 'modules/receber/receber_module.dart';
import 'modules/extrato_carteira/extrato_carteira_module.dart';
import 'modules/diario/diario_module.dart';

import 'shared/widgets/meus_pontos/meus_pontos_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MeusPontosController()),
        Bind(
          (i) => AppController(),
        ),
        Bind(
          (i) => HasuraConnect("http://hackthonccr.herokuapp.com/v1/graphql"),
        ),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router("/extratoPontos", module: ExtratoPontosModule()),
        Router("/indicarMotorista", module: IndicarMotoristaModule()),
        Router("/ranking", module: RankingModule()),
        Router("/checkin", module: CheckinModule()),
        Router("/trocarPontos", module: TrocarPontosModule()),
        Router("/meusVouchers", module: MeusVouchersModule()),
        Router("/pagar", module: PagarModule()),
        Router("/receber", module: ReceberModule()),
        Router("/extratoCarteira", module: ExtratoCarteiraModule()),
        Router("/jornada", module: JornadaModule()),
        Router("/diario", module: DiarioModule()),
        Router("/sono", module: SonoModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

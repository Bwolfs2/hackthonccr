import 'pages/codigoConfirmacao/codigo_confirmacao_controller.dart';
import 'pages/comprovante/comprovante_controller.dart';
import 'pages/confirmacao/confirmacao_controller.dart';
import 'pagar_controller.dart';
import 'repositories/pagar_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'pagar_page.dart';
import 'pages/confirmacao/confirmacao_page.dart';
import 'pages/comprovante/comprovante_page.dart';
import 'pages/codigoConfirmacao/codigo_confirmacao_page.dart';

class PagarModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ConfirmacaoController()),
        Bind((i) => PagarController()),
        Bind((i) => CodigoConfirmacaoController()),
        Bind((i) => ComprovanteController()),
        Bind((i) => PagarRepository(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => PagarPage()),
        Router("/confirmacao", child: (_, args) => ConfirmacaoPage()),
        Router("/codigoConfirmacao",
            child: (_, args) => CodigoConfirmacaoPage()),
        Router("/comprovante", child: (_, args) => ComprovantePage()),
      ];

  static Inject get to => Inject<PagarModule>.of();
}

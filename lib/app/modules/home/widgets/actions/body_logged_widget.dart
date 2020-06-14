import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackthonccr/app/modules/home/models/action_model.dart';
import 'package:hackthonccr/app/modules/home/widgets/current_jorney/current_jorney/current_jorney_widget.dart';
import 'package:hackthonccr/app/modules/home/widgets/group_actions/group_actions/group_actions_widget.dart';
import 'package:hackthonccr/app/modules/home/widgets/list_group_actions/list_group_actions/list_group_actions_widget.dart';

import '../publicity_images_carrousel/publicity_images_carrousel/publicity_images_carrousel_widget.dart';
import 'body_logged_controller.dart';

class BodyLoggedWidget extends StatefulWidget {
  @override
  _BodyLoggedWidgetState createState() => _BodyLoggedWidgetState();
}

class _BodyLoggedWidgetState
    extends ModularState<BodyLoggedWidget, BodyLoggedController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF5F6FA),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(children: [
        PublicityImagesCarrouselWidget(),
        Observer(
          builder: (BuildContext context) {
            if (!controller.isLogged) {
              return Container();
            }

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CurrentJorneyWidget(),
                ListGroupActionsWidget(
                  groups: [
                    GroupActionsWidget(
                      title: "Meus Pontos",
                      itemsActions: [
                        ActionModel(
                            "Extrato de Pontos", FontAwesomeIcons.receipt, () {
                          Modular.to.pushNamed("/extratoPontos");
                        }, false),
                        ActionModel(
                            "Indicar e Ganhar", FontAwesomeIcons.slideshare,
                            () {
                          Modular.to.pushNamed("/indicarMotorista");
                        }, false),
                        ActionModel("Ranking", FontAwesomeIcons.award, () {
                          Modular.to.pushNamed("/ranking");
                        }, false),
                        ActionModel("Check-in", FontAwesomeIcons.flagCheckered,
                            () {
                          Modular.to.pushNamed("/checkin");
                        }, false),
                        ActionModel(
                            "Trocar Pontos", FontAwesomeIcons.exchangeAlt, () {
                          Modular.to.pushNamed("/trocarPontos");
                        }, false),
                        ActionModel("Meus Vouchers", FontAwesomeIcons.pager,
                            () {
                          Modular.to.pushNamed("/meusVouchers");
                        }, false),
                      ],
                    ),
                    GroupActionsWidget(
                      title: "Carteira",
                      itemsActions: [
                        ActionModel("Pagar", FontAwesomeIcons.qrcode, () {
                          Modular.to.pushNamed("/pagar");
                        }, false),
                        ActionModel("Receber", FontAwesomeIcons.handHoldingUsd,
                            () {
                          Modular.to.pushNamed("/receber");
                        }, false),
                        ActionModel(
                            "Extrato", FontAwesomeIcons.fileInvoiceDollar, () {
                          Modular.to.pushNamed("/extratoCarteira");
                        }, false),
                      ],
                    ),
                    GroupActionsWidget(
                      title: "Minhas Viagens",
                      itemsActions: [
                        ActionModel("Jornada", FontAwesomeIcons.truckMoving,
                            () {
                          Modular.to.pushNamed("/jornada");
                        }, false),
                        ActionModel("SAU CCR", FontAwesomeIcons.home, () {
                          Modular.to.pushNamed("/emDesenvolvimento");
                        }, true),
                        ActionModel("WIFI", FontAwesomeIcons.wifi, () {
                          Modular.to.pushNamed("/wifi");
                        }, false),
                      ],
                    ),
                    GroupActionsWidget(
                      title: "Bem Estar e Saúde",
                      itemsActions: [
                        ActionModel("Consultas", FontAwesomeIcons.laptopMedical,
                            () {
                          Modular.to.pushNamed("/emDesenvolvimento");
                        }, true),
                        ActionModel(
                            "Agendamentos", FontAwesomeIcons.calendarPlus, () {
                          Modular.to.pushNamed("/emDesenvolvimento");
                        }, true),
                        ActionModel("Exames", FontAwesomeIcons.xRay, () {
                          Modular.to.pushNamed("/emDesenvolvimento");
                        }, true),
                        ActionModel("Minha Saude", Icons.favorite, () {
                          Modular.to.pushNamed("/emDesenvolvimento");
                        }, true),
                        ActionModel("Diario", FontAwesomeIcons.calendar, () {
                          Modular.to.pushNamed("/diario");
                        }, false),
                        ActionModel("Sono", FontAwesomeIcons.bed, () {
                          Modular.to.pushNamed("/sono");
                        }, false),
                        ActionModel("Medicação", FontAwesomeIcons.pills, () {
                          Modular.to.pushNamed("/emDesenvolvimento");
                        }, true),
                        ActionModel("Atendimento Presencial",
                            FontAwesomeIcons.clinicMedical, () {
                          Modular.to.pushNamed("/emDesenvolvimento");
                        }, true),
                        ActionModel(
                            "Contato de Emergência", FontAwesomeIcons.ambulance,
                            () {
                          Modular.to.pushNamed("/emDesenvolvimento");
                        }, true),
                      ],
                    ),
                    GroupActionsWidget(
                      title: "Entretenimento",
                      itemsActions: [
                        ActionModel("Estradas do Brasil", FontAwesomeIcons.road,
                            () {
                          Modular.to.pushNamed("/emDesenvolvimento");
                        }, true),
                        ActionModel(
                            "Mande um Recado", FontAwesomeIcons.paperPlane, () {
                          Modular.to.pushNamed("/emDesenvolvimento");
                        }, true),
                        ActionModel(
                            "Aprenda", FontAwesomeIcons.chalkboardTeacher, () {
                          Modular.to.pushNamed("/emDesenvolvimento");
                        }, true),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        )
      ]),
    );
  }
}

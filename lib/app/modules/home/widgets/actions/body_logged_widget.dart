import 'package:flutter/material.dart';
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
        CurrentJorneyWidget(),
        ListGroupActionsWidget(
          groups: [
            GroupActionsWidget(
              title: "Meus Pontos",
              itemsActions: [
                ActionModel("Extrato de Pontos", FontAwesomeIcons.receipt, () {
                  Modular.to.pushNamed("/extratoPontos");
                }),
                ActionModel("Indicar e Ganhar", FontAwesomeIcons.slideshare,
                    () {
                  Modular.to.pushNamed("/indicarMotorista");
                }),
                ActionModel("Ranking", FontAwesomeIcons.award, () {
                  Modular.to.pushNamed("/ranking");
                }),
                ActionModel("Check-in", FontAwesomeIcons.flagCheckered, () {
                  Modular.to.pushNamed("/checkin");
                }),
                ActionModel("Trocar Pontos", FontAwesomeIcons.exchangeAlt, () {
                  Modular.to.pushNamed("/trocarPontos");
                }),
                ActionModel("Meus Vouchers", FontAwesomeIcons.pager, () {
                  Modular.to.pushNamed("/meusVouchers");
                }),
              ],
            ),
            GroupActionsWidget(
              title: "Carteira",
              itemsActions: [
                ActionModel("Pagar", FontAwesomeIcons.qrcode, () {
                  Modular.to.pushNamed("/pagar");
                }),
                ActionModel("Receber", FontAwesomeIcons.handHoldingUsd, () {
                  Modular.to.pushNamed("/receber");
                }),
                ActionModel("Extrato", FontAwesomeIcons.fileInvoiceDollar, () {
                  Modular.to.pushNamed("/extratoCarteira");
                }),
              ],
            ),
            GroupActionsWidget(
              title: "Minhas Viagens",
              itemsActions: [
                ActionModel("Jornada", FontAwesomeIcons.truckMoving, () {
                  Modular.to.pushNamed("/jornada");
                }),
                ActionModel("SAU CCR", FontAwesomeIcons.home, () {}),
                ActionModel("WIFI", FontAwesomeIcons.wifi, () {}),
              ],
            ),
            GroupActionsWidget(
              title: "Bem Estar e Saúde",
              itemsActions: [
                ActionModel(
                    "Tele-Medicina", FontAwesomeIcons.laptopMedical, () {}),
                ActionModel(
                    "Agendamentos", FontAwesomeIcons.calendarPlus, () {}),
                ActionModel("Exames", FontAwesomeIcons.xRay, () {}),
                ActionModel("Minha Saude", Icons.favorite, () {}),
                ActionModel("Diario", FontAwesomeIcons.calendar, () {}),
                ActionModel("Sono", FontAwesomeIcons.bed, () {}),
                ActionModel("Medicação", FontAwesomeIcons.pills, () {}),
                ActionModel("Atendimento Presencial",
                    FontAwesomeIcons.clinicMedical, () {}),
                ActionModel(
                    "Contato de Emergência", FontAwesomeIcons.ambulance, () {}),
              ],
            ),
            GroupActionsWidget(
              title: "Entretenimento",
              itemsActions: [
                ActionModel("Estradas do Brasil", FontAwesomeIcons.road, () {}),
                ActionModel(
                    "Mande um Recado", FontAwesomeIcons.paperPlane, () {}),
                ActionModel(
                    "Aprenda", FontAwesomeIcons.chalkboardTeacher, () {}),
              ],
            ),
          ],
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
                ActionModel("Extrato de Pontos", Icons.access_alarm, () {
                  Modular.to.pushNamed("/extratoPontos");
                }),
                ActionModel("Indicar e Ganhar", Icons.access_alarm, () {
                  Modular.to.pushNamed("/indicarMotorista");
                }),
                ActionModel("Ranking", Icons.access_alarm, () {
                  Modular.to.pushNamed("/ranking");
                }),
                ActionModel("Check-in", Icons.access_alarm, () {}),
                ActionModel("Trocar Pontos", Icons.access_alarm, () {}),
                ActionModel("Meus Vouchers", Icons.access_alarm, () {}),
              ],
            ),
            GroupActionsWidget(
              title: "Carteira",
              itemsActions: [
                ActionModel("Pagar", Icons.access_alarm, () {}),
                ActionModel("Receber", Icons.access_alarm, () {}),
                ActionModel("Extrato", Icons.access_alarm, () {}),
              ],
            ),
            GroupActionsWidget(
              title: "Minhas Viagens",
              itemsActions: [
                ActionModel("Jornada", Icons.access_alarm, () {}),
                ActionModel("SAU CCR", Icons.access_alarm, () {}),
                ActionModel("WIFI", Icons.access_alarm, () {}),
              ],
            ),
            GroupActionsWidget(
              title: "Bem Estar e Saúde",
              itemsActions: [
                ActionModel("Tele-Medicina", Icons.access_alarm, () {}),
                ActionModel("Agendamentos", Icons.access_alarm, () {}),
                ActionModel("Exames", Icons.access_alarm, () {}),
                ActionModel("Minha Saude", Icons.access_alarm, () {}),
                ActionModel("Diario", Icons.access_alarm, () {}),
                ActionModel("Sono", Icons.access_alarm, () {}),
                ActionModel("Medicação", Icons.access_alarm, () {}),
                ActionModel("Hidatação", Icons.access_alarm, () {}),
                ActionModel("Presencial", Icons.access_alarm, () {}),
              ],
            ),
            GroupActionsWidget(
              title: "Entretenimento",
              itemsActions: [
                ActionModel("Estradas do Brasil", Icons.access_alarm, () {}),
                ActionModel("Mande um Recado", Icons.access_alarm, () {}),
                ActionModel("Aprenda", Icons.access_alarm, () {}),
              ],
            ),
          ],
        )
      ]),
    );
  }
}

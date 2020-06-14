import 'package:mobx/mobx.dart';
import 'models/jornada_model.dart';

part 'jornada_controller.g.dart';

class JornadaController = _JornadaControllerBase with _$JornadaController;

abstract class _JornadaControllerBase with Store {
  @observable
  List<JornadaModel> jornadas = <JornadaModel>[
    JornadaModel(
        dataInicial: "23 MAI 2020",
        dataFinal: "25 MAI 2020",
        cidadeInicial: "Porto Alegre/RS",
        cidadeFinal: "Caxia do Sul/RS",
        distancia: "127,4",
        paradas: [
          ParadaModel(
              local: "Posto Araruana",
              cidade: "Farroupilha / RS",
              distancia: "81,4",
              temperatura: "27"),
          ParadaModel(
              local: "Posto Rio Branco",
              cidade: "Caxias do Sul/RS",
              distancia: "90,4",
              temperatura: "23"),
          ParadaModel(
              local: "Churrascaria Carne Assada",
              cidade: "Caxias do Sul / RS",
              distancia: "100,1",
              temperatura: "22"),
        ]),
    JornadaModel(
        dataInicial: "25 MAI 2020",
        dataFinal: "27 MAI 2020",
        cidadeFinal: "Porto Alegre/RS",
        cidadeInicial: "Caxia do Sul/RS",
        distancia: "127,4",
        paradas: [
          ParadaModel(
              local: "Posto Rio Branco",
              cidade: "Caxias do Sul/RS",
              distancia: "3,4",
              temperatura: "23")
        ]),
    JornadaModel(
        dataInicial: "28 MAI 2020",
        dataFinal: "30 MAI 2020",
        cidadeInicial: "Porto Alegre/RS",
        cidadeFinal: "São Paulo/SC",
        distancia: "1.143,0",
        paradas: [
          ParadaModel(
              local: "Parada da Familia",
              cidade: "Curitiba/PR",
              distancia: "2",
              temperatura: "19"),
          ParadaModel(
              local: "Posto Marcão",
              cidade: "Campina Grande do Sul/PR",
              distancia: "84",
              temperatura: "18"),
          ParadaModel(
              local: "Posto Esperança",
              cidade: "Registro/SP",
              distancia: "213",
              temperatura: "22"),
        ])
  ];
}

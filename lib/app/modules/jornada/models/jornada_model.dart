class JornadaModel {
  final String dataInicial;
  final String dataFinal;
  final String cidadeInicial;
  final String cidadeFinal;
  final String distancia;
  final List<ParadaModel> paradas;

  JornadaModel(
      {this.dataInicial,
      this.dataFinal,
      this.cidadeInicial,
      this.cidadeFinal,
      this.distancia,
      this.paradas});
}

class ParadaModel {
  final String cidade;
  final String local;
  final String distancia;
  final String temperatura;

  ParadaModel({this.cidade, this.local, this.distancia, this.temperatura});
}

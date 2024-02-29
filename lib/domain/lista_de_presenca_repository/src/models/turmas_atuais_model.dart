class TurmasAtuaisModel{
  final String? Id;
  final String? Nome;
  final String? DataHora;

  const TurmasAtuaisModel({required this.Id, required this.Nome, required this.DataHora});

  factory TurmasAtuaisModel.fromJson(Map<String, dynamic> json) {
    return TurmasAtuaisModel(Id: json['id'], Nome: json['nome'], DataHora: json['dataHora']);
  }
}

class EmpresaModel {
  final String? Id;
  final String? Nome;
  final String? Logo;

  const EmpresaModel({required this.Id, required this.Logo, required this.Nome});

  factory EmpresaModel.fromJson(Map<String, dynamic> json) {
    return EmpresaModel(Id: json['id'], Logo: json['logo'], Nome: json['nome']);
  }
}

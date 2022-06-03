class ClienteModel {
  String? nome;
  String? idade;
  String? ufNascimento;
  String? email;

  ClienteModel({
    this.nome,
    this.idade,
    this.ufNascimento,
    this.email,
  });

  factory ClienteModel.fromJson(Map<String, dynamic> json) => ClienteModel(
        nome: json['nome'],
        idade: json['idade'],
        email: json['email'],
        ufNascimento: json['uf'],
      );

  Map<String, dynamic> toJson() => {
        'nome': nome,
        'idade': idade,
        'email': email,
        'uf': ufNascimento,
      };
}

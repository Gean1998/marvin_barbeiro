import 'package:flutter/material.dart';

class CardCliente extends StatelessWidget {
  final String nome;
  final String idade;
  final String ufNascimento;
  final String? email;

  const CardCliente({
    Key? key,
    required this.nome,
    required this.idade,
    required this.ufNascimento,
    this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        color: Theme.of(context).colorScheme.secondary,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nome: $nome',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Idade: $idade',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'UF Nascimento: $ufNascimento',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'E-mail: $email',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

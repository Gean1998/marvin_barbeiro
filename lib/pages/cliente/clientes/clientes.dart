import 'package:flutter/material.dart';
import 'package:marvin_barbeiro/pages/cliente/clientes/componentes/card_cliente.dart';
import 'package:marvin_barbeiro/pages/cliente/novo_cliente/novo_cliente.dart';

class ClientesView extends StatelessWidget {
  const ClientesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => NovoCliente()),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          CardCliente(
            nome: 'Gean',
            idade: '24',
            ufNascimento: 'MT',
            email: 'gean@hotmail.com',
          ),
        ],
      ),
    );
  }
}

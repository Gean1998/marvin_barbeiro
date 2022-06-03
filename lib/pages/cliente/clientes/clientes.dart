import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:marvin_barbeiro/pages/cliente/clientes/componentes/card_cliente.dart';
import 'package:marvin_barbeiro/pages/cliente/novo_cliente/novo_cliente.dart';
import 'package:marvin_barbeiro/pages/cliente/stores/clientes_store.dart';

class ClientesView extends StatelessWidget {
  const ClientesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I<ClientesStore>();
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
      body: Observer(
        builder: ((context) => ListView.builder(
              itemCount: store.clientes.length,
              itemBuilder: ((context, index) {
                final cliente = store.clientes.elementAt(index);
                return CardCliente(
                  nome: cliente.nome ?? '',
                  idade: cliente.idade ?? '',
                  ufNascimento: cliente.uf ?? '',
                  email: cliente.email ?? '',
                );
              }),
            )),
      ),
    );
  }
}

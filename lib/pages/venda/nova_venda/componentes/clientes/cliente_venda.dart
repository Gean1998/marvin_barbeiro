import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:marvin_barbeiro/pages/cliente/stores/clientes_store.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/nova_venda_store.dart';

class ClienteVenda extends StatelessWidget {
  final NovaVendaStore novaVendaStore;
  const ClienteVenda({Key? key, required this.novaVendaStore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final clientesStore = GetIt.I<ClientesStore>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cliente/Venda'),
        centerTitle: true,
      ),
      body: Observer(
        builder: (_) {
          if (clientesStore.clientes.isEmpty) {
            return Container();
          }

          return ListView.builder(
            itemCount: clientesStore.clientes.length,
            itemBuilder: (_, index) {
              final cliente = clientesStore.clientes.elementAt(index);
              return ListTile(
                title: Text(cliente.nome!),
                subtitle: Text(cliente.email ?? ''),
                onTap: () {
                  novaVendaStore.definirCliente(cliente);
                  Navigator.of(context).pop();
                },
              );
            },
          );
        },
      ),
    );
  }
}

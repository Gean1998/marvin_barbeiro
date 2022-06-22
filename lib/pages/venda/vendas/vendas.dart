import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/nova_venda.dart';
import 'package:marvin_barbeiro/pages/venda/vendas/componentes/card_venda.dart';
import 'package:marvin_barbeiro/pages/venda/vendas/vendas_store.dart';

class VendasView extends StatelessWidget {
  const VendasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I<VendasStore>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Vendas'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => NovaVendaView()));
        },
        child: Icon(Icons.add),
      ),
      body: Observer(
        builder: (_) {
          if (store.vendas.isEmpty) {
            return Container();
          }

          return ListView.builder(
            itemCount: store.vendas.length,
            itemBuilder: (_, index) {
              final venda = store.vendas.elementAt(index);
              return CardVenda(
                documento: venda.id.toString(),
                nomeCliente: venda.cliente!.nome!,
                servico: venda.servico!.descricao!,
                valorTotal: venda.servico!.valor!.toString(),
              );
            },
          );
        },
      ),
    );
  }
}

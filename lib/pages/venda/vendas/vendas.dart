import 'package:flutter/material.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/nova_venda.dart';
import 'package:marvin_barbeiro/pages/venda/vendas/componentes/card_venda.dart';

class VendasView extends StatelessWidget {
  const VendasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          CardVenda(
            documento: '1',
            nomeCliente: 'Gean',
            valorTotal: '60.0',
            servico: 'Corte de Cabelo',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          CardVenda(
            titulo: 'titulo',
            atendimentos: '2',
            valorTotal: '60',
          ),
        ],
      ),
    );
  }
}

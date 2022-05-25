import 'package:flutter/material.dart';
import 'package:marvin_barbeiro/pages/home/componentes/card_resumo_vendas.dart';
import 'package:marvin_barbeiro/pages/venda/vendas/vendas.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marvin Barbeiro'),
        centerTitle: true,
      ),
      body: Column(
        children: const [
          CardResumoVendas(
            titulo: 'Dia',
            atendimentos: '2',
            valorTotal: '60',
          ),
          CardResumoVendas(
            titulo: 'Mês',
            atendimentos: '2',
            valorTotal: '60',
          ),
          CardResumoVendas(
            titulo: 'Ano',
            atendimentos: '2',
            valorTotal: '60',
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.people),
          ),
          SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => VendasView()));
            },
            child: Icon(Icons.receipt),
          ),
        ],
      ),
    );
  }
}

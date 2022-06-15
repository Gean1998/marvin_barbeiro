import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/componentes/formas_pagamento/formas_pagamento.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/componentes/servicos/servicos.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/nova_venda_store.dart';

class NovaVendaView extends StatelessWidget {
  const NovaVendaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = GetIt.I.get<NovaVendaStore>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Venda'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Observer(
                  builder: (_) {
                    return Expanded(
                      child: TextFormField(
                        initialValue: store.cliente!.nome,
                        onChanged: (String? value) =>
                            store.cliente!.nome = value,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.people),
                ),
              ],
            ),
          ),
          FormasPagamento(store: store),
          const SizedBox(height: 8.0),
          Servicos(store: store),
          const SizedBox(height: 8.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Observer(
              builder: (_) {
                return Text(
                    'Valor: R\$ ${store.servico == null ? '' : store.servico!.valor}');
              },
            ),
          ),
          const SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Finalizar Venda'),
          ),
        ],
      ),
    );
  }
}

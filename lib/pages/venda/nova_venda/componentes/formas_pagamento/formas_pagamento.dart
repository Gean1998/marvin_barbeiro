import 'package:flutter/material.dart';

import '../../nova_venda_store.dart';

class FormasPagamento extends StatelessWidget {
  final NovaVendaStore store;

  const FormasPagamento({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Forma de Pagamento'),
        DropdownButtonFormField(
          items: const <DropdownMenuItem<String>>[
            DropdownMenuItem(
              child: Text('Dinheiro'),
              value: 'Dinheiro',
            ),
            DropdownMenuItem(
              child: Text('Cartão Crédito'),
              value: 'Cartão Crédito',
            ),
            DropdownMenuItem(
              child: Text('Cartão Débito'),
              value: 'Cartão Débito',
            ),
          ],
          value: store.formaPagamento,
          onChanged: (String? value) {
            store.formaPagamento = value!;
          },
        ),
      ],
    );
  }
}

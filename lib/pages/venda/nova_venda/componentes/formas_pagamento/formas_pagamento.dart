import 'package:flutter/material.dart';

class FormasPagamento extends StatelessWidget {
  const FormasPagamento({Key? key}) : super(key: key);

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
          value: 'Dinheiro',
          onChanged: (value) {},
        ),
      ],
    );
  }
}

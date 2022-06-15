import 'package:flutter/material.dart';
import 'package:marvin_barbeiro/core/mockup/mock_servicos.dart';
import 'package:marvin_barbeiro/pages/servicos/model/servico_model.dart';
import 'package:marvin_barbeiro/pages/venda/nova_venda/nova_venda_store.dart';

class Servicos extends StatelessWidget {
  final NovaVendaStore store;

  const Servicos({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _servicos = MockServicos().getMock();

    // store.servico = _servicos.first;

    var menuItens = <DropdownMenuItem<ServicoModel>>[];
    _servicos.forEach(
      (servico) => menuItens.add(
        DropdownMenuItem(
          child: Text(servico.descricao!),
          value: servico,
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Tipo de Serviço'),
        DropdownButtonFormField(
          items: menuItens,
          value: store.servico,
          // hint: Text('Selecione o Servico'),
          onChanged: (ServicoModel? value) {
            store.servico = value!;
          },
        ),
      ],
    );
  }
}

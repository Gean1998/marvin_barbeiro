import 'package:flutter/material.dart';

class CardResumoVendas extends StatelessWidget {
  final String titulo;
  final String atendimentos;
  final String valorTotal;

  const CardResumoVendas(
      {Key? key,
      required this.titulo,
      required this.atendimentos,
      required this.valorTotal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        color: Theme.of(context).colorScheme.secondary,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                titulo,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Atendimentos',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        atendimentos,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Valor Total',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        valorTotal,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

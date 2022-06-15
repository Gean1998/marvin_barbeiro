// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendas_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VendasStore on _VendasStoreBase, Store {
  late final _$vendasAtom =
      Atom(name: '_VendasStoreBase.vendas', context: context);

  @override
  ObservableList<NovaVendaStore> get vendas {
    _$vendasAtom.reportRead();
    return super.vendas;
  }

  @override
  set vendas(ObservableList<NovaVendaStore> value) {
    _$vendasAtom.reportWrite(value, super.vendas, () {
      super.vendas = value;
    });
  }

  late final _$_VendasStoreBaseActionController =
      ActionController(name: '_VendasStoreBase', context: context);

  @override
  int obterIdNovaVenda() {
    final _$actionInfo = _$_VendasStoreBaseActionController.startAction(
        name: '_VendasStoreBase.obterIdNovaVenda');
    try {
      return super.obterIdNovaVenda();
    } finally {
      _$_VendasStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
vendas: ${vendas}
    ''';
  }
}

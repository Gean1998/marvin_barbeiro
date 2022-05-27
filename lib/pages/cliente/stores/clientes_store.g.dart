// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientes_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClientesStore on _ClientesStoreBase, Store {
  late final _$clientesAtom =
      Atom(name: '_ClientesStoreBase.clientes', context: context);

  @override
  ObservableList<ClienteStore> get clientes {
    _$clientesAtom.reportRead();
    return super.clientes;
  }

  @override
  set clientes(ObservableList<ClienteStore> value) {
    _$clientesAtom.reportWrite(value, super.clientes, () {
      super.clientes = value;
    });
  }

  late final _$_ClientesStoreBaseActionController =
      ActionController(name: '_ClientesStoreBase', context: context);

  @override
  void mesclarCliente(ClienteStore cliente) {
    final _$actionInfo = _$_ClientesStoreBaseActionController.startAction(
        name: '_ClientesStoreBase.mesclarCliente');
    try {
      return super.mesclarCliente(cliente);
    } finally {
      _$_ClientesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remover(ClienteStore cliente) {
    final _$actionInfo = _$_ClientesStoreBaseActionController.startAction(
        name: '_ClientesStoreBase.remover');
    try {
      return super.remover(cliente);
    } finally {
      _$_ClientesStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
clientes: ${clientes}
    ''';
  }
}

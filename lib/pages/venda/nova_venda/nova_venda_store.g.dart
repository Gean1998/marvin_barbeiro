// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nova_venda_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NovaVendaStore on _NovaVendaStoreBase, Store {
  late final _$clienteAtom =
      Atom(name: '_NovaVendaStoreBase.cliente', context: context);

  @override
  ClienteStore? get cliente {
    _$clienteAtom.reportRead();
    return super.cliente;
  }

  @override
  set cliente(ClienteStore? value) {
    _$clienteAtom.reportWrite(value, super.cliente, () {
      super.cliente = value;
    });
  }

  late final _$formaPagamentoAtom =
      Atom(name: '_NovaVendaStoreBase.formaPagamento', context: context);

  @override
  String get formaPagamento {
    _$formaPagamentoAtom.reportRead();
    return super.formaPagamento;
  }

  @override
  set formaPagamento(String value) {
    _$formaPagamentoAtom.reportWrite(value, super.formaPagamento, () {
      super.formaPagamento = value;
    });
  }

  late final _$servicoAtom =
      Atom(name: '_NovaVendaStoreBase.servico', context: context);

  @override
  ServicoModel? get servico {
    _$servicoAtom.reportRead();
    return super.servico;
  }

  @override
  set servico(ServicoModel? value) {
    _$servicoAtom.reportWrite(value, super.servico, () {
      super.servico = value;
    });
  }

  late final _$dataAtom =
      Atom(name: '_NovaVendaStoreBase.data', context: context);

  @override
  DateTime? get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(DateTime? value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$_NovaVendaStoreBaseActionController =
      ActionController(name: '_NovaVendaStoreBase', context: context);

  @override
  void definirCliente(ClienteStore clienteSelecionado) {
    final _$actionInfo = _$_NovaVendaStoreBaseActionController.startAction(
        name: '_NovaVendaStoreBase.definirCliente');
    try {
      return super.definirCliente(clienteSelecionado);
    } finally {
      _$_NovaVendaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void definirClienteConsumidor() {
    final _$actionInfo = _$_NovaVendaStoreBaseActionController.startAction(
        name: '_NovaVendaStoreBase.definirClienteConsumidor');
    try {
      return super.definirClienteConsumidor();
    } finally {
      _$_NovaVendaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void salvar() {
    final _$actionInfo = _$_NovaVendaStoreBaseActionController.startAction(
        name: '_NovaVendaStoreBase.salvar');
    try {
      return super.salvar();
    } finally {
      _$_NovaVendaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cliente: ${cliente},
formaPagamento: ${formaPagamento},
servico: ${servico},
data: ${data}
    ''';
  }
}

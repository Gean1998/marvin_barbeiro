// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClienteStore on _ClienteStoreBase, Store {
  late final _$nomeAtom =
      Atom(name: '_ClienteStoreBase.nome', context: context);

  @override
  String? get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String? value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$idadeAtom =
      Atom(name: '_ClienteStoreBase.idade', context: context);

  @override
  String? get idade {
    _$idadeAtom.reportRead();
    return super.idade;
  }

  @override
  set idade(String? value) {
    _$idadeAtom.reportWrite(value, super.idade, () {
      super.idade = value;
    });
  }

  late final _$ufAtom = Atom(name: '_ClienteStoreBase.uf', context: context);

  @override
  String? get uf {
    _$ufAtom.reportRead();
    return super.uf;
  }

  @override
  set uf(String? value) {
    _$ufAtom.reportWrite(value, super.uf, () {
      super.uf = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_ClienteStoreBase.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  @override
  String toString() {
    return '''
nome: ${nome},
idade: ${idade},
uf: ${uf},
email: ${email}
    ''';
  }
}

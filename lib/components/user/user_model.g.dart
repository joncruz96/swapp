// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserModel on _UserModelBase, Store {
  final _$titleAtom = Atom(name: '_UserModelBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$checkAtom = Atom(name: '_UserModelBase.check');

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  final _$onClickAtom = Atom(name: '_UserModelBase.onClick');

  @override
  Function get onClick {
    _$onClickAtom.reportRead();
    return super.onClick;
  }

  @override
  set onClick(Function value) {
    _$onClickAtom.reportWrite(value, super.onClick, () {
      super.onClick = value;
    });
  }

  final _$_UserModelBaseActionController =
      ActionController(name: '_UserModelBase');

  @override
  dynamic setTitle(String value) {
    final _$actionInfo = _$_UserModelBaseActionController.startAction(
        name: '_UserModelBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_UserModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(bool value) {
    final _$actionInfo = _$_UserModelBaseActionController.startAction(
        name: '_UserModelBase.setCheck');
    try {
      return super.setCheck(value);
    } finally {
      _$_UserModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setOnClick(Function value) {
    final _$actionInfo = _$_UserModelBaseActionController.startAction(
        name: '_UserModelBase.setOnClick');
    try {
      return super.setOnClick(value);
    } finally {
      _$_UserModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
check: ${check},
onClick: ${onClick}
    ''';
  }
}

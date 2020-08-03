// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$onTapAtom = Atom(name: '_HomeControllerBase.onTap');

  @override
  Function get onTap {
    _$onTapAtom.reportRead();
    return super.onTap;
  }

  @override
  set onTap(Function value) {
    _$onTapAtom.reportWrite(value, super.onTap, () {
      super.onTap = value;
    });
  }

  final _$positionDrawerAtom = Atom(name: '_HomeControllerBase.positionDrawer');

  @override
  double get positionDrawer {
    _$positionDrawerAtom.reportRead();
    return super.positionDrawer;
  }

  @override
  set positionDrawer(double value) {
    _$positionDrawerAtom.reportWrite(value, super.positionDrawer, () {
      super.positionDrawer = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic setOnTap(Function value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setOnTap');
    try {
      return super.setOnTap(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic position(double value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.position');
    try {
      return super.position(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
onTap: ${onTap},
positionDrawer: ${positionDrawer}
    ''';
  }
}

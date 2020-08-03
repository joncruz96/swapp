// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TimelineController on _TimelineControllerBase, Store {
  final _$onTapAtom = Atom(name: '_TimelineControllerBase.onTap');

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

  final _$_TimelineControllerBaseActionController =
      ActionController(name: '_TimelineControllerBase');

  @override
  dynamic setOnTap(Function value) {
    final _$actionInfo = _$_TimelineControllerBaseActionController.startAction(
        name: '_TimelineControllerBase.setOnTap');
    try {
      return super.setOnTap(value);
    } finally {
      _$_TimelineControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
onTap: ${onTap}
    ''';
  }
}

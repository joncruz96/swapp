// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IndicatorModel on _IndicatorModelBase, Store {
  Computed<bool> _$visibleNowComputed;

  @override
  bool get visibleNow =>
      (_$visibleNowComputed ??= Computed<bool>(() => super.visibleNow,
              name: '_IndicatorModelBase.visibleNow'))
          .value;

  final _$textAtom = Atom(name: '_IndicatorModelBase.text');

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  final _$visibleAtom = Atom(name: '_IndicatorModelBase.visible');

  @override
  bool get visible {
    _$visibleAtom.reportRead();
    return super.visible;
  }

  @override
  set visible(bool value) {
    _$visibleAtom.reportWrite(value, super.visible, () {
      super.visible = value;
    });
  }

  final _$onClickAtom = Atom(name: '_IndicatorModelBase.onClick');

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

  final _$_IndicatorModelBaseActionController =
      ActionController(name: '_IndicatorModelBase');

  @override
  dynamic setText(String value) {
    final _$actionInfo = _$_IndicatorModelBaseActionController.startAction(
        name: '_IndicatorModelBase.setText');
    try {
      return super.setText(value);
    } finally {
      _$_IndicatorModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setVisible(bool value) {
    final _$actionInfo = _$_IndicatorModelBaseActionController.startAction(
        name: '_IndicatorModelBase.setVisible');
    try {
      return super.setVisible(value);
    } finally {
      _$_IndicatorModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setOnClick(Function value) {
    final _$actionInfo = _$_IndicatorModelBaseActionController.startAction(
        name: '_IndicatorModelBase.setOnClick');
    try {
      return super.setOnClick(value);
    } finally {
      _$_IndicatorModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
text: ${text},
visible: ${visible},
onClick: ${onClick},
visibleNow: ${visibleNow}
    ''';
  }
}

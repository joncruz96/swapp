import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:swapp/timeline/indicator/indicator_model.dart';
import 'package:timeline_tile/timeline_tile.dart';

class IndicatorWidget extends StatefulWidget {

  final IndicatorModel indicator;
  final IconStyle iconStyle;

  const IndicatorWidget({Key key, @required this.indicator, @required this.iconStyle})
      : super(key: key);

  @override
  _IndicatorWidgetState createState() => _IndicatorWidgetState();
}

class _IndicatorWidgetState extends State<IndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        decoration: BoxDecoration(
          color: widget.iconStyle.color,
          shape: BoxShape.circle,
          border: Border.fromBorderSide(
            BorderSide(
              color: Colors.white.withOpacity(0.2),
              width: 4,
            ),
          ),
        ),
        child: InkWell(
          onTap: () {
            widget.indicator.setVisible(!widget.indicator.visibleNow);
          },
          child: Icon(
            widget.iconStyle.iconData,
            color: Colors.white,
            size: 24.0,
          ),
        ),
      );
    },);
  }
}
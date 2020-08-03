

import 'package:flutter/material.dart';
import 'package:swapp/home/home_widget.dart';

class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HomeWidget()
      ],
    );
  }
}
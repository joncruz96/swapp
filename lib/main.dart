import 'package:flutter/material.dart';
import 'package:swapp/layouts/initial_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 24, 148, 77),
        accentColor: Color.fromARGB(255, 214, 158, 226),
        buttonTheme: ButtonThemeData(
          buttonColor: Color.fromARGB(255, 255, 247, 62),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Initial(),
    );
  }
}


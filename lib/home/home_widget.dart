import 'package:flutter/material.dart';
import 'package:swapp/components/user/user_card.dart';
import 'package:swapp/drawer/drawer_widget.dart';
import 'package:swapp/login/login_widgtet.dart';
import 'package:swapp/timeline/timeline_page.dart';

import 'home_controller.dart';

class HomeWidget extends StatefulWidget {
  final Function onTap;

  const HomeWidget({Key key, this.onTap}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 24, 148, 77),
        accentColor: Color.fromARGB(255, 214, 158, 226),
        buttonTheme: ButtonThemeData(
          buttonColor: Color.fromARGB(255, 255, 247, 62),
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(Icons.more_vert),
          ),
          title: Text('Swaapp'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () => _showMessages(context),
            ),
          ],
        ),
        drawer: DrawerWidget(),
        body: Container(
          height: 100.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: controller.listItems.length,
            itemBuilder: (_, index) {
              var item = controller.listItems[index];
              return UserCard(item: item);
            },
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
          ),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

  void _showMessages(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => TimelinePage(),
      ),
    );
  }
}

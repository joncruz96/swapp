import 'package:flutter/material.dart';
import 'package:swapp/drawer/circular_image.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget>
    with SingleTickerProviderStateMixin {

  final String imageUrl = "lib/images/joncruz.jpg";

  final List<MenuItem> options = [
    MenuItem(Icons.people, 'Friends'),
    MenuItem(Icons.history, 'History'),
  ];

  final List<MenuItem> config = [
    MenuItem(Icons.settings, 'Settings'),
    MenuItem(Icons.headset_mic, 'Support'),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        ClipPath(
          clipper: DrawerWidgetClipper(),
          child: Material(
            color: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100.0),
                bottomRight: Radius.circular(100.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width - 80,
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.only(
                  top: 64,
                  bottom: 64,
                ),
                child: Column(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 8,
                            bottom: 16,
                          ),
                          child: CircularImage(AssetImage(imageUrl)),
                        ),
                        Text(
                          'Jon Cruz',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        children: options.map((item) {
                          return ListTile(
                            onTap: () {
                              print(MediaQuery.of(context).size.width - 80);
                            },
                            leading: Icon(
                              item.icon,
                              color: Colors.white,
                              size: 20,
                            ),
                            title: Text(
                              item.title,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        children: config.map((item) {
                          return ListTile(
                            leading: Icon(
                              item.icon,
                              color: Colors.white,
                              size: 20,
                            ),
                            title: Text(
                              item.title,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        FractionalTranslation(
          translation: Offset(-0.12, 0.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Material(
                elevation: 5.0,
                type: MaterialType.circle,
                color: Colors.white,
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Theme.of(context).primaryColor,
                  size: 80.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DrawerWidgetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height / 2 - 45);
//    path.conicTo(size.width - 70, size.height / 2, size.width,
//        size.height / 2 + 70, 1.0);
    print(size.width);
    path.arcToPoint(
      Offset(size.width, size.height / 2 + 45),
      radius: Radius.circular(45.0),
      clockwise: false,
    );
//    path.addRect(Rect.fromLTWH(100.0, 10.0, 100.0, 100.0));
//    path.arcTo(Rect.fromLTWH(size.width - 70, size.height / 2, 70.0, 70.0), pi,
//        pi / 2, false);
    path.lineTo(size.width, size.height / 2 + 70.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class MenuItem {
  String title;
  IconData icon;

  MenuItem(this.icon, this.title);
}

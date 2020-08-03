import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:swapp/components/user/user_model.dart';

class UserCard extends StatelessWidget {
  final UserModel item;

  const UserCard({Key key, @required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            color: item.check == true
                    ? Colors.grey
                    : Theme.of(context).primaryColor,
            child: InkWell(
              onTap: () => item.setCheck(!item.check),
              child: Container(
                padding: EdgeInsets.all(8.0),
                height: 80,
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.people,
                      color: Colors.white,
                      size: 24.0,
                    ),
                    Text(
                      item.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

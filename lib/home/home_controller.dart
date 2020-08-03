import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:swapp/components/user/user_model.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  @observable
  Function onTap;
  
  @observable
  double positionDrawer;

  @action
  setOnTap(Function value) => onTap = value;

  @action
  position(double value){
    positionDrawer = value;
  }

  List<UserModel> listItems = [
    UserModel("Item 01",  true, null),
    UserModel("Item 02", false, null),
    UserModel("Item 03", false, null),
    UserModel("Item 04", false, null),
    UserModel("Item 05", false, null),
    UserModel("Item 06",  true, null),
  ];

}
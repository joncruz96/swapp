import 'package:mobx/mobx.dart';
part 'user_model.g.dart';

class UserModel = _UserModelBase with _$UserModel;

abstract class _UserModelBase with Store {
  
  _UserModelBase(this.title, this.check, this.onClick);

  @observable
  String title;

  @observable 
  bool check;

  @observable
  Function onClick;

  @action
  setTitle(String value) => title = value;

  @action
  setCheck(bool value) => check = value;

  @action
  setOnClick(Function value) => onClick = value;

}
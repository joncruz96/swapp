import 'package:mobx/mobx.dart';
part 'indicator_model.g.dart';

class IndicatorModel = _IndicatorModelBase with _$IndicatorModel;

abstract class _IndicatorModelBase with Store {
  
  _IndicatorModelBase(this.text, this.visible, this.onClick);

  @observable
  String text;

  @observable 
  bool visible;

  @observable
  Function onClick;

  @action
  setText(String value) => text = value;

  @action
  setVisible(bool value) => visible = value;

  @action
  setOnClick(Function value) => onClick = value;

  @computed
  bool get visibleNow => visible; 

}
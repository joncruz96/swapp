import 'package:mobx/mobx.dart';
import 'package:swapp/timeline/indicator/indicator_model.dart';
part 'timeline_controller.g.dart';

class TimelineController = _TimelineControllerBase with _$TimelineController;

abstract class _TimelineControllerBase with Store {
  
  @observable
  Function onTap;

  @action
  setOnTap(Function value) => onTap = value;

  List<IndicatorModel> listItems = [
    IndicatorModel("Item 01",  true, null),
    IndicatorModel("Item 02", true, null),
    IndicatorModel("Item 03", true, null),
    IndicatorModel("Item 04", true, null),
    IndicatorModel("Item 05", true, null),
    IndicatorModel("Item 06",  true, null),
  ];

  

}
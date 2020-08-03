import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:swapp/components/user/clipper/message_clipper.dart';
import 'package:swapp/timeline/data.dart';
import 'package:swapp/timeline/indicator/indicator_widget.dart';
import 'package:swapp/timeline/timeline_controller.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'data.dart';

class TimelinePage extends StatefulWidget {
  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  final controller = TimelineController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Timeline'),
        ),
        body: Container(
          color: Colors.white,
          child: SafeArea(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Column(
                  children: <Widget>[
                    Container(height: 20,),
                    Expanded(
                      child: ListView.builder(
                        itemCount: controller.listItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          var category = listCategory[index];
                          var observer = Observer(builder: (_) {
                            return Visibility(
                              visible: controller.listItems[index].visibleNow,
                              child: CustomPaint(
                                painter: MessageClipperPaint(),
                                child: ClipPath(
                                  clipper: MessageClipper(),
                                  child: Container(
                                    height: 160,
                                    width: 100,
                                    padding: EdgeInsets.only(top: 8.0, right: 8.0, bottom: 16),
                                    child: Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4.0),
                                          ),
                                      clipBehavior: Clip.antiAlias,
                                      child: Padding(
                                        padding: EdgeInsets.all(0.0),
                                        child: Stack(
                                          children: <Widget>[
                                            Positioned(
                                              top: 0,
                                              child: Container(
                                                padding: EdgeInsets.only(right: 200), //EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                                                decoration: BoxDecoration(
                                                    color: category.iconBackground,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 32, top: 16, bottom: 12),
                                                  child: Text(
                                                    category.title,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 20, top: 55),
                                              child: Text(category.content),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          });
                          final timelineTile = TimelineTile(
                            alignment: TimelineAlign.manual,
                            lineX: 0.1,
                            isFirst: index == 0,
                            isLast: index == 6,
                            indicatorStyle: IndicatorStyle(
                              width: 40,
                              height: 40,
                              indicatorY: 0.2,
                              indicator: IndicatorWidget(
                                indicator: controller.listItems[index],
                                iconStyle: IconStyle(
                                  color: category.iconBackground,
                                  iconData: category.icon.iconData,
                                ),
                              ),
                              drawGap: true,
                            ),
                            topLineStyle: LineStyle(
                              color: Colors.black.withOpacity(0.15),
                              width: 3.0,
                            ),
                            rightChild: observer,
                          );
                          return timelineTile;
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
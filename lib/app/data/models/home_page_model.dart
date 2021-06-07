import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomePageModel {
  final RxInt circleAngle = 0.obs;
  final RxInt buttonPressedIndex = (-1).obs;
  static const int buttonMax = 24;
  static const int appBarExpandedHeight = 256;
  AutoScrollController scrollController;

  HomePageModel({@required int angle}) {
    scrollController = AutoScrollController(
      // viewportBoundaryGetter: () => Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: Axis.horizontal,
    );
  }
}

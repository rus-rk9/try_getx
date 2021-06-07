import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

//модель основного экрана
class HomePageModel {
  //реактивный угол круга
  final RxInt circleAngle = 0.obs;
  //реактивный индекс кнопки
  final RxInt buttonPressedIndex = (-1).obs;
  //количество кнопок
  static const int buttonMax = 24;
  static const int appBarExpandedHeight = 256;
  //контроллер прокрутки
  AutoScrollController scrollController;

  HomePageModel({@required int angle}) {
    scrollController = AutoScrollController(
      axis: Axis.horizontal,
    );
  }
}

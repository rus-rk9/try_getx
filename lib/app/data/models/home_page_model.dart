import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomePageModel {
  final RxInt circleAngle = 0.obs;
  final RxInt buttonPressed = (-1).obs;
  static const int buttonMax = 4;

  HomePageModel({@required int angle});
}

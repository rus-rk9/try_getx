import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final RxInt _circleAngle = 0.obs;
  final RxInt _buttonPressed = (-1).obs;
  static const int buttonMax = 4;
  // FixedScrollMetrics x;

  HomePageController({@required int initAngle}) {
    assert(initAngle >= 0);
    _circleAngle.value = initAngle;
  }

  set circleAngle(value) => this._circleAngle.value = value;
  get circleAngle => this._circleAngle.value;

  set buttonPressed(value) => this._buttonPressed.value = value;
  get buttonPressed => this._buttonPressed.value;
}

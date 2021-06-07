import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/data/models/home_page_model.dart';

class HomePageController extends GetxController {
  HomePageModel _model;

  HomePageController({@required int initAngle}) {
    this._model = HomePageModel(angle: initAngle);
  }

  set circleAngle(value) => this._model.circleAngle.value = value;
  get circleAngle => this._model.circleAngle.value;

  set buttonPressed(value) => this._model.buttonPressed.value = value;
  get buttonPressed => this._model.buttonPressed.value;
}

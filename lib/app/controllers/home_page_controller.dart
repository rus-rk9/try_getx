import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:try_getx/app/data/models/home_page_model.dart';

class HomePageController extends GetxController {
  HomePageModel _model;
  bool _isTopPositionAlerted = false;

  HomePageController({@required int initAngle}) {
    this._model = HomePageModel(angle: initAngle);
  }

  set circleAngle(value) => this._model.circleAngle.value = value;
  get circleAngle => this._model.circleAngle.value;

  set buttonPressedIndex(value) => this._model.buttonPressedIndex.value = value;
  get buttonPressedIndex => this._model.buttonPressedIndex.value;

  set isTopPositionAlerted(value) => this._isTopPositionAlerted = value;
  get isTopPositionAlerted => this._isTopPositionAlerted;

  AutoScrollController get scrollController => this._model.scrollController;

  static bool checkIntInInterval({int currVal, int mainVal, int delta}) {
    return ((mainVal - delta) <= currVal && currVal <= (mainVal + delta));
  }

  Future scrollToIndex({int index}) async {
    await this._model.scrollController.scrollToIndex(index, preferPosition: AutoScrollPosition.begin);
  }
}

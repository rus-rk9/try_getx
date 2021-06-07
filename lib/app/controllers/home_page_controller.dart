import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:try_getx/app/data/models/home_page_model.dart';

//контроллер основной страницы
class HomePageController extends GetxController {
  //модель
  HomePageModel _model;
  //флаг, был ли алерт (очищается при отпускании скроллинга)
  bool _isTopPositionAlerted = false;

  HomePageController({@required int initAngle}) {
    this._model = HomePageModel(angle: initAngle);
  }

  //угол круга
  set circleAngle(value) => this._model.circleAngle.value = value;
  get circleAngle => this._model.circleAngle.value;

  //храненние индекса нажатой кнопки
  set buttonPressedIndex(value) => this._model.buttonPressedIndex.value = value;
  get buttonPressedIndex => this._model.buttonPressedIndex.value;

  //был ли алерт ...
  set isTopPositionAlerted(value) => this._isTopPositionAlerted = value;
  get isTopPositionAlerted => this._isTopPositionAlerted;

  //контроллер прокрутки для скроллинга к текущему индексу кнопки
  AutoScrollController get scrollController => this._model.scrollController;

  //проверяет число в заданном диапазоне (для отлавливания прохода верхней границы)
  static bool checkIntInInterval({int currVal, int mainVal, int delta}) {
    return ((mainVal - delta) <= currVal && currVal <= (mainVal + delta));
  }

  //прокрутка к текущему индексу кнопки
  Future scrollToIndex({int index}) async {
    await this._model.scrollController.scrollToIndex(index, preferPosition: AutoScrollPosition.begin);
  }
}

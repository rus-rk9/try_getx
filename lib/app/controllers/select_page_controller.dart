import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/data/models/select_page_model.dart';

class SelectPageController extends GetxController {
  //модель
  SelectPageModel _model;
  SelectPageController() {
    this._model = SelectPageModel();
  }

  //значение индекса кнопки
  set valToSelect(value) => this._model.valToSelectController.text = value;
  get valToSelect => this._model.valToSelectController.text;

  //контроллер поля
  TextEditingController get valToSelectController => this._model.valToSelectController;

  //фокус для скроллинга к выбранной кнопке
  FocusNode get textFocusNode => this._model.textFocusNode;
}

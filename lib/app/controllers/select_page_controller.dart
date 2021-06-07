import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/data/models/select_page_model.dart';

class SelectPageController extends GetxController {
  SelectPageModel _model;

  SelectPageController() {
    this._model = SelectPageModel();
  }

  set valToSelect(value) => this._model.valToSelectController.text = value;
  get valToSelect => this._model.valToSelectController.text;

  TextEditingController get valToSelectController => this._model.valToSelectController;
  FocusNode get textFocusNode => this._model.textFocusNode;
}

import 'package:flutter/cupertino.dart';

//модель страницы выбора индекса
class SelectPageModel {
  //контроллер поля ввода
  TextEditingController valToSelectController;
  //фокусировка поля ввода
  FocusNode textFocusNode;

  SelectPageModel() {
    valToSelectController = TextEditingController()..text = '0';
    textFocusNode = FocusNode();
  }
}

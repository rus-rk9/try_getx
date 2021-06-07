import 'package:flutter/cupertino.dart';

class SelectPageModel {
  TextEditingController valToSelectController;
  FocusNode textFocusNode;

  SelectPageModel() {
    valToSelectController = TextEditingController()..text = '0';
    textFocusNode = FocusNode();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/controllers/home_page_controller.dart';
import 'package:try_getx/app/controllers/select_page_controller.dart';
import 'package:try_getx/app/data/models/home_page_model.dart';

class SelectPage extends GetView<SelectPageController> {
  @override
  Widget build(BuildContext context) {
    HomePageController homePageController = Get.find();
    controller.valToSelect = homePageController.buttonPressedIndex.toString();
    controller.textFocusNode.requestFocus();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 80,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 100,
                  height: 48,
                  child: TextField(
                    controller: controller.valToSelectController,
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
                    focusNode: controller.textFocusNode,
                    decoration: InputDecoration(
                      hintText: '0 ... ${HomePageModel.buttonMax - 1}',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    int currVal = int.parse(controller.valToSelect);
                    if (0 <= currVal && currVal < HomePageModel.buttonMax) {
                      homePageController.buttonPressedIndex = currVal;
                      homePageController.scrollToIndex(index: currVal);
                      Get.back();
                    }
                  },
                  child: Container(
                    width: 100,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'сохранить',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

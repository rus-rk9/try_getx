import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/routes/app_pages.dart';

void main() {
  debugRepaintRainbowEnabled = true;
  runApp(
    GetMaterialApp(
      initialRoute: Routes.INITIAL,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      // debugShowCheckedModeBanner: true,
      initialRoute: Routes.DETAILS,
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
    ),
  );
}

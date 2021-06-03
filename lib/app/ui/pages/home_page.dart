import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/controllers/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: SafeArea(
        child: Text('HomeController'),
      ),
    );
  }
}

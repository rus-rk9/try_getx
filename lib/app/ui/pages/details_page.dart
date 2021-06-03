import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/controllers/details_page_controller.dart';

class DetailsPage extends GetView<DetailsPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('DetailsPage')), body: SafeArea(child: Text('DetailsPageroller')));
  }
}

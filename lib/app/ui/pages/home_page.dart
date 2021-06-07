import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/controllers/home_page_controller.dart';
import 'package:try_getx/app/controllers/select_page_controller.dart';
import 'package:try_getx/app/data/models/home_page_model.dart';
import 'package:try_getx/app/routes/app_pages.dart';
import 'package:try_getx/app/ui/global_widgets/rounded_long_container.dart';
import 'dart:math' as Math;

import 'package:try_getx/app/ui/global_widgets/standart_button.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

//основной экран
class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.transparent,
          child: NotificationListener<ScrollNotification>(
            child: CustomScrollView(
              slivers: [
                sliverAppBar(),
                sliverToBoxAdapter(context),
              ],
            ),
            onNotification: (notification) {
              if (notification is ScrollEndNotification) {
                controller.isTopPositionAlerted = false;
              }
              controller.circleAngle = notification.metrics.extentBefore.toInt();
              if (HomePageController.checkIntInInterval(currVal: notification.metrics.pixels.toInt(), mainVal: HomePageModel.appBarExpandedHeight, delta: 4)) {
                if (!controller.isTopPositionAlerted) {
                  Get.snackbar('Внимание!', 'Верхняя граница достигнута');
                  controller.isTopPositionAlerted = true;
                }
              }
              return true;
            },
          ),
        ),
      ),
    );
  }

  //бар экрана
  SliverAppBar sliverAppBar() {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: HomePageModel.appBarExpandedHeight.toDouble(),
      toolbarHeight: 0,
      flexibleSpace: Stack(
        children: [
          Positioned(
            left: -120,
            top: -98,
            child: Obx(() => Transform.rotate(
                  angle: (-Math.pi / 180) * controller.circleAngle,
                  alignment: Alignment.center,
                  child: Container(
                    width: 300,
                    height: 300,
                    child: SvgPicture.asset(
                      'lib/assets/circle.svg',
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  //виджет экрана
  SliverToBoxAdapter sliverToBoxAdapter(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 3072),
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedLongContainer(width: context.width * 0.6),
            RoundedLongContainer(width: context.width * 0.75),
            RoundedLongContainer(width: context.width * 0.5),
            buttonsRow(),
          ],
        ),
      ),
    );
  }

  //кнопки
  Container buttonsRow() {
    return Container(
      padding: EdgeInsets.only(top: 50, bottom: 50),
      height: 200,
      decoration: BoxDecoration(color: Colors.transparent),
      child: NotificationListener<ScrollNotification>(
        child: ListView.builder(
          controller: controller.scrollController,
          itemCount: HomePageModel.buttonMax,
          itemBuilder: (context, index) {
            return Obx(() => AutoScrollTag(
                  key: ValueKey(index),
                  controller: controller.scrollController,
                  index: index,
                  child: StandartButton(
                    text: index.toString(),
                    color: (index == controller.buttonPressedIndex) ? Colors.red : Colors.white,
                    onPressed: () {
                      controller.buttonPressedIndex = index;
                      Get.lazyPut<SelectPageController>(() => SelectPageController());
                      Get.toNamed(Routes.SELECT);
                    },
                  ),
                ));
          },
          scrollDirection: Axis.horizontal,
        ),
        onNotification: (notification) {
          return true;
        },
      ),
    );
  }
}

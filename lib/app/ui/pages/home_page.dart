import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/controllers/home_page_controller.dart';
import 'package:try_getx/app/ui/global_widgets/rounded_long_container.dart';
import 'dart:math' as Math;

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.transparent,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                expandedHeight: 300.0,
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
              ),
              SliverToBoxAdapter(
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

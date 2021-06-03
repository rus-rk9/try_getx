import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/controllers/home_page_controller.dart';
import 'package:try_getx/app/ui/global_widgets/rounded_long_container.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 200.0,
              flexibleSpace: /* const */ FlexibleSpaceBar(
                background: SvgPicture.asset(
                  'lib/assets/circle.svg',
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    // margin: EdgeInsets.only(top: 64),
                    padding: EdgeInsets.only(top: 32, left: 24, right: 24, bottom: 3072),
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RoundedLongContainer(width: context.width * 0.6),
                        RoundedLongContainer(width: context.width * 0.75),
                        RoundedLongContainer(width: context.width * 0.5),
                      ],
                    ),
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

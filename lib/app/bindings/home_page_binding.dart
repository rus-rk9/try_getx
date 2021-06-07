import 'package:get/get.dart';
import 'package:try_getx/app/controllers/details_page_controller.dart';
import 'package:try_getx/app/controllers/home_page_controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(
      () => HomePageController(initAngle: 0),
    );
    Get.lazyPut<DetailsPageController>(
      () => DetailsPageController(),
    );
  }
}

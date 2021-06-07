import 'package:get/get.dart';
import 'package:try_getx/app/bindings/home_page_binding.dart';
import 'package:try_getx/app/ui/pages/select_page.dart';
import 'package:try_getx/app/ui/pages/home_page.dart';
part 'app_routes.dart';

//экраны
abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      binding: HomePageBinding(),
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.SELECT,
      page: () => SelectPage(),
      transition: Transition.zoom,
    ),
  ];
}

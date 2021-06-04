import 'package:get/get.dart';
import 'package:try_getx/app/bindings/home_page_binding.dart';
import 'package:try_getx/app/ui/pages/details_page.dart';
import 'package:try_getx/app/ui/pages/home_page.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      binding: HomePageBinding(),
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => DetailsPage(),
      transition: Transition.zoom,
    ),
  ];
}

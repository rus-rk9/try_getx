import 'package:get/get.dart';
import 'package:try_getx/app/ui/pages/details_page.dart';
import 'package:try_getx/app/ui/pages/home_page.dart';
part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => DetailsPage(),
      transition: Transition.zoom,
    ),
  ];
}

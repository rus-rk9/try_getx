import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/data/repository/home_page_repo.dart';

class HomePageController extends GetxController {
  final HomePageRepository repository;
  HomePageController({@required this.repository}) : assert(repository != null);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}

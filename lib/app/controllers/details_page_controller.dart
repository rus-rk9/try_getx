import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:try_getx/app/data/repository/details_page_repo.dart';

class DetailsPageController extends GetxController {
  final DetailsPageRepository repository;
  DetailsPageController({@required this.repository}) : assert(repository != null);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}

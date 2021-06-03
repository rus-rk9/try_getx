import 'package:flutter/foundation.dart';
import 'package:try_getx/app/data/provider/home_page_api.dart';

class HomePageRepository {
  final HomePageApi api;

  HomePageRepository({@required this.api}) : assert(api != null);

  getAll() {
    return api.getAll();
  }

  // getId(id) {
  //   return api.getId(id);
  // }

  // delete(id) {
  //   return api.delete(id);
  // }

  // edit(obj) {
  //   return api.edit(obj);
  // }

  // add(obj) {
  //   return api.add(obj);
  // }
}

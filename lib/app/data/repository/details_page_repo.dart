import 'package:flutter/foundation.dart';
import 'package:try_getx/app/data/provider/details_page_api.dart';

class DetailsPageRepository {
  final DetailsPageApi api;

  DetailsPageRepository({@required this.api}) : assert(api != null);

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

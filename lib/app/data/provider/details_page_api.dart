import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:try_getx/app/data/models/details_page_model.dart';

const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';

class DetailsPageApi {
  final Dio httpClient;
  DetailsPageApi({@required this.httpClient});

  getAll() async {
    try {
      var response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = json.decode(response.data);
        List<DetailsPageModel> listMyModel = jsonResponse['data'].map<DetailsPageModel>((map) {
          return DetailsPageModel.fromJson(map);
        }).toList();
        return listMyModel;
      } else
        print('erro -get');
    } catch (_) {}
  }
}

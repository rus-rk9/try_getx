import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:try_getx/app/data/models/home_page_model.dart';

const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';

class HomePageApi {
  final Dio httpClient;
  HomePageApi({@required this.httpClient});

  getAll() async {
    try {
      var response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = json.decode(response.data);
        List<HomePageModel> listMyModel = jsonResponse['data'].map<HomePageModel>((map) {
          return HomePageModel.fromJson(map);
        }).toList();
        return listMyModel;
      } else
        print('erro -get');
    } catch (_) {}
  }
}

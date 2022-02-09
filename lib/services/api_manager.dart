import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:market/models/dataInfo.dart';

// ignore: camel_case_types
class API_Manager {
  Future<Data> getData() async {
    var client = http.Client();
    var newsModel;

    try {
      var response = await client.get(Uri.parse(
          "https://api.bottomstreet.com/forex/technical?forex_name=USDINR"));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        newsModel = Data.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsModel;
    }

    return newsModel;
  }
}

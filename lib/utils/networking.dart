import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Networking {
  static Future<List> fetchSubjects({@required String url}) async {
    try {
      var response = await Dio().get(url);
      return response.data['values'];
    } catch (e) {
      print(e);
      return [];
    }
  }

  static Future fetchData({@required String url}) async {
    try {
      var response = await Dio().get(url);
      return response.data;
    } catch (e) {
      print(e);
      return e;
    }
  }
}

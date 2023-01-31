import 'dart:convert';

import 'package:flutter/material.dart';

import '../app/constants/app_constants.dart';
import '../presentation/home/components/controller/post_controller.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  void _printError(error, StackTrace stacktrace) {
    debugPrint('error: $error & stacktrace: $stacktrace');
  }

  Future<List<Data>?> fetchData() async {
    // log("$map");
    try {
      final response = await http.get(
        Uri.parse('${baseUrl}auth/products'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        return jsonResponse.map((data) => Data.fromJson(data)).toList();
      } else {
        throw Exception('Unexpected error occured!');
      }
    } catch (e, stacktrace) {
      _printError(e, stacktrace);
    }
    return null;
  }
}

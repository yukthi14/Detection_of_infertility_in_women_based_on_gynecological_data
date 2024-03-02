import 'dart:convert';
import 'dart:core';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class LinearRegression {
  Future<List<Map<String, dynamic>>> postLinearRegression(
      String Age,
      String bmi,
      String hb,
      String cycleLength,
      String marriageStatus,
      String noOfAbortion,
      String fsh,
      String lh,
      String ths,
      String amh,
      String vit,
      String prg,
      String sugar,
      String bp,
      String endometrium) async {
    final String url = dotenv.get("linearRegression");
    try {
      http.Response response = await http.post(
        Uri.parse(
            '$url?Age=$Age&bmi=$bmi&hb=$hb&cycleLength=$cycleLength&marriageStatus=$marriageStatus&noOfAbortion=$noOfAbortion&fsh=$fsh&lh=$lh&ths=$ths&amh=$amh&vit=$vit&prg=$prg&sugar=$sugar&bp=$bp&endometrium=$endometrium'),
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = json.decode(response.body);
        List<Map<String, dynamic>> linearData =
            jsonResponse.cast<Map<String, dynamic>>();
        return linearData;
      } else {
        return [];
      }
    } catch (e) {
      print("Error : $e");
      return [];
    }
  }
}

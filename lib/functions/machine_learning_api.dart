import 'dart:convert';
import 'dart:core';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/linearModel.dart';

class LinearRegression {
  Future<double> postLinearRegression(LinearModel linearModel) async {
    // final String url = dotenv.get("linearRegression");
    const String linearUrl = 'http://127.0.0.1:5000/Linear';
    try {
      http.Response response = await http.post(
        Uri.parse(
            '$linearUrl?Age=${linearModel.Age}&bmi=${linearModel.bmi}&hb=${linearModel.hb}&cycleLength=${linearModel.cycleLength}&marriageStatus=${linearModel.marriageStatus}&noOfAbortion=${linearModel.noOfAbortion}&fsh=${linearModel.fsh}&lh=${linearModel.lh}&ths=${linearModel.ths}&amh=${linearModel.amh}&vit=${linearModel.vit}&prg=${linearModel.prg}&sugar=${linearModel.sugar}&bp=${linearModel.bp}&endometrium=${linearModel.endometrium}'),
      );

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        return jsonResponse['int_values'];
      } else {
        return 0;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error : $e");
      }
      return 0;
    }
  }

  Future<bool> postKMeans(LinearModel linearModel) async {
    const String kMeansUrl = 'http://127.0.0.1:5000/kmeans';
    try {
      http.Response response = await http.post(
        Uri.parse(
            '$kMeansUrl?Age=${linearModel.Age}&bmi=${linearModel.bmi}&hb=${linearModel.hb}&cycleLength=${linearModel.cycleLength}&marriageStatus=${linearModel.marriageStatus}&noOfAbortion=${linearModel.noOfAbortion}&fsh=${linearModel.fsh}&lh=${linearModel.lh}&ths=${linearModel.ths}&amh=${linearModel.amh}&vit=${linearModel.vit}&prg=${linearModel.prg}&sugar=${linearModel.sugar}&bp=${linearModel.bp}&endometrium=${linearModel.endometrium}'),
      );

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        return jsonResponse['int_values'];
      } else {
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error : $e");
      }
      return false;
    }
  }
}

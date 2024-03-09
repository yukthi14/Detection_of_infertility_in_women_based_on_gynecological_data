import 'dart:convert';
import 'dart:core';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import '../models/linearModel.dart';

class LinearRegression {
  Future<double> postLinearRegression(LinearModel linearModel) async {
    final String url = dotenv.get("linearRegression");
    try {
      http.Response response = await http.post(
        Uri.parse(
            '$url?Age=${linearModel.Age}&bmi=${linearModel.bmi}&hb=${linearModel.hb}&cycleLength=${linearModel.cycleLength}&marriageStatus=${linearModel.marriageStatus}&noOfAbortion=${linearModel.noOfAbortion}&fsh=${linearModel.fsh}&lh=${linearModel.lh}&ths=${linearModel.ths}&amh=${linearModel.amh}&vit=${linearModel.vit}&prg=${linearModel.prg}&sugar=${linearModel.sugar}&bp=${linearModel.bp}&endometrium=${linearModel.endometrium}'),
      );

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        return jsonResponse['int_values'];
      } else {
        return 0;
      }
    } catch (e) {
      print("Error : $e");
      return 0;
    }
  }
}

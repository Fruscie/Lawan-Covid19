import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lawan_covid19/models/kasus_model.dart';

String apiCovid =
    'https://apicovid19indonesia-v2.vercel.app/api/indonesia/provinsi?name=dki_jakarta';

class ApiProvider {
  Future<KasusCovidModel> getKasus() async {
    try {
      final response = await http.get(Uri.parse(apiCovid));

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        print(result);
        return KasusCovidModel.fromJson(result);
      } else {
        print('error get data');
      }
    } catch (e) {
      print('error di api provider $e');
    }
    return KasusCovidModel();
  }
}

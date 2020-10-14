import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  String url = "https://pavel-vacha.cz/albistech/";
  load(String module, {var params}) async {
    var response = await http.post(url + module, body: json.encode(params));
    return json.decode(response.body);
  }
}

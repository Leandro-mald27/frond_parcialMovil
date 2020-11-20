import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://192.168.1.54/api/";

class API {
  static Future getUsers() {
    var url = baseUrl + "/Servicios";
    return http.get(url);
  }
}
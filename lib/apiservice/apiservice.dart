
// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:http/http.dart' as http;

class CallApi {
  var token;
  final String _url = 'http://192.168.42.8/jadwal-pengangkutan/public/api/';
  Uri baseUrl = Uri.parse("http://192.168.42.8/jadwal_sampah/public/api/laporan");

  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
    //'Authorization' : 'Bearer $token'
  };

  

}
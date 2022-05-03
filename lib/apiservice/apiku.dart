
// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:http/http.dart' as http;
import 'package:petugas/after%20login/peta.dart';

import '../model/marker.dart';

class CallApi {
  var token;
  final String _url = 'http://192.168.42.8/jadwal-pengangkutan/public/api/';
  Uri baseUrl = Uri.parse("http://192.168.42.8/jadwal_sampah/public/api/login");
  Uri getProfil = Uri.parse("http://192.168.42.185/jadwal_sampah/public/api/laporan");
  Uri upengajuan = Uri.parse("http://192.168.42.8/jadwal_sampah/public/api/updatePengajuan");
  Uri histori = Uri.parse("http://192.168.42.8/jadwal_sampah/public/api/notifikasi");
  Client client = Client();

  Future<List<Local>> getget() async { 
    final response =  await http.get(
        getProfil,
        headers: _setHeaders(),
    );
    if(response.statusCode == 200){
      var json = jsonDecode(response.body);
      final parsed =json['data'].cast<Map<String, dynamic>>();
      print(json);
      return parsed.map<Local>((json)=>Local.fromJson(json)).toList();
    }else{
      return [];
    }
  }



  _setHeaders() => {
    'Content-type' : 'application/json',
    'Accept' : 'application/json',
  };
}
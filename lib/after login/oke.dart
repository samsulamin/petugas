
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:petugas/model/marker.dart';

class contohPage extends StatefulWidget {
  const contohPage({ Key? key }) : super(key: key);

  @override
  State<contohPage> createState() => _contohPageState();
}

class _contohPageState extends State<contohPage> {
  var apidata;
   @override
  void initState() {
      
    // _markers.add(
    //   Marker(
    //     markerId: MarkerId("-6.920339, 109.161091"),
    //     position: _currentPosition,
    //     icon: BitmapDescriptor.defaultMarker,
    //   ),
    // );
    super.initState();
    lokasi();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API TEST')),
      body: Center(),
    );
  }

   Container makeCard(Local post) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Text(post.email),
    );
  }

  Future<Map> fetchData() async {
    Uri baseUrl = Uri.parse("http://192.168.42.221/jadwal_sampah/public/api/laporan");
    final apiresponse =  await http.get(baseUrl);
    print(apiresponse.body);
    return json.decode(apiresponse.body);
  }

   Future<List<Local>> lokasi() async {
    try {
      Uri baseUrl = Uri.parse("http://192.168.42.221/jadwal_sampah/public/api/laporan");
        final respose = await http.get(baseUrl);
        var listData = jsonDecode(respose.body);
        setState(() {
          apidata = listData;
        });
        print("apidata : $apidata");
    } catch (e) {
      return [];
    }
      return [];
  }
}
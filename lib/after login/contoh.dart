import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

// void main() async{
//   Map data = await getData();
//  // String myData = data[0]['title'];
//   print(data);
//   runApp(new MaterialApp(
//     title: 'Muhammed Essa',
//     home: new Scaffold(
//     backgroundColor: Colors.deepPurple,
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         title: new Text('data' ),
//       ),
//       body: new Container(
//           margin: EdgeInsets.only(left: 22.0),
//         child: new Column(
//           children: <Widget>[
//             new Padding(padding: EdgeInsets.only(top: 75.0)),
//             new Center(
//              child: new Icon(Icons.ac_unit,color: Colors.white,size: 55.4,),
//             ),
//             new Padding(padding: EdgeInsets.only(top: 55.0)),
//             new Text('Name: ${data['location']['name']}',
//               style: TextStyle(
//                 fontStyle: FontStyle.italic,
//                 color: Colors.white,
//                 fontSize: 55.5,
//               ),
//             ),
//             new Text('Region: ${data['location']['region']}',

//               style: TextStyle(

//                 fontStyle: FontStyle.italic,
//                 color: Colors.white,
//                 fontSize: 22.5,
//               ),
//             ),
//             new Text('Country: ${data['location']['country']}',

//               style: TextStyle(

//                 fontStyle: FontStyle.italic,
//                 color: Colors.white,
//                 fontSize: 22.5,
//               ),
//             ),
//             new Text('Localtime: ${data['location']['localtime']}',

//               style: TextStyle(

//                 fontStyle: FontStyle.italic,
//                 color: Colors.white,
//                 fontSize: 22.5,
//               ),
//             ),
//             new Text('Latitude : ${data['location']['lat']}',

//               style: TextStyle(

//                 fontStyle: FontStyle.italic,
//                 color: Colors.white,
//                 fontSize: 22.5,
//               ),
//             ),
//             new Text('Longitude: ${data['location']['lon']}',

//               style: TextStyle(

//                 fontStyle: FontStyle.italic,
//                 color: Colors.white,
//                 fontSize: 22.5,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   ));
// }

void main() async{
  Map data = await getData();
//  // String myData = data[0]['title'];
  print(data);
  runApp(new contohPage());
}

class contohPage extends StatefulWidget {
  const contohPage({ Key? key }) : super(key: key);

  @override
  State<contohPage> createState() => _contohPageState();
}

class _contohPageState extends State<contohPage> {
  var apidata;
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API TESTKU')),
      body: Center(
        child: Text("INI HALAMAN"),
      ),
    );
  }
}

Future<Map> getData() async {
  Uri baseUrl = Uri.parse("http://192.168.42.221/jadwal_sampah/public/api/laporan");
  final apiresponse =  await http.get(baseUrl);
  print(apiresponse.body);
  return json.decode(apiresponse.body);
}







// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import 'package:petugas/model/marker.dart';

// class contohPage extends StatefulWidget {
//   const contohPage({ Key? key }) : super(key: key);

//   @override
//   State<contohPage> createState() => _contohPageState();
// }

// class _contohPageState extends State<contohPage> {
//   var apidata;
//    @override
//   void initState() {
      
//     // _markers.add(
//     //   Marker(
//     //     markerId: MarkerId("-6.920339, 109.161091"),
//     //     position: _currentPosition,
//     //     icon: BitmapDescriptor.defaultMarker,
//     //   ),
//     // );
//     super.initState();
//     lokasi();
//     print(apidata);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('API TEST')),
//       body: Center(
//         child: Text("Oke Halaman"),
//       ),
//     );
//   }

//   Future<Map> fetchData() async {
//     Uri baseUrl = Uri.parse("http://192.168.42.221/jadwal_sampah/public/api/laporan");
//     final apiresponse =  await http.get(baseUrl);
//     print(apiresponse.body);
//     return json.decode(apiresponse.body);
//   }

//    Future<List> lokasi() async {
//       Uri baseUrl = Uri.parse("http://192.168.42.221/jadwal_sampah/public/api/laporan");
//         final respose = await http.get(baseUrl);
//         var listData = jsonDecode(respose.body);
//         setState(() {
//           apidata = listData;
//         });
//         print("apidata : $apidata");
//       return [];
//   }
// }

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:petugas/after%20login/oke.dart';
// import 'dart:convert';

// import 'package:petugas/model/marker.dart';


// void main() async{
//   List data = (await getData()) as List;
//   print("ini DATA BARU = $data");
//   runApp(new contohPage());
// }
// class contohPage extends StatefulWidget {
//   const contohPage({ Key? key }) : super(key: key);

//   @override
//   State<contohPage> createState() => _contohPageState();
// }

// class _contohPageState extends State<contohPage> {
//   var apidata;
//    @override
//   void initState() {
      
//     // _markers.add(
//     //   Marker(
//     //     markerId: MarkerId("-6.920339, 109.161091"),
//     //     position: _currentPosition,
//     //     icon: BitmapDescriptor.defaultMarker,
//     //   ),
//     // );
//     super.initState();
//     getData();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('API TEST')),
//       body: Center(
//         child: Text("INI HALAMAN"),
//       ),
//     );
//   }
// }

// Future<Map> getData() async {
//   Uri baseUrl = Uri.parse("http://192.168.42.221/jadwal_sampah/public/api/laporan");
//   final apiresponse =  await http.get(baseUrl);
//   return json.decode(apiresponse.body);
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:petugas/model/marker.dart';

import '../apiservice/apiku.dart';

// class MapSample extends StatefulWidget {
//   @override
//   State<MapSample> createState() => MapSampleState();
// }

// class MapSampleState extends State<MapSample> {
//   final List<Marker> _markers = <Marker>[];
//   final LatLng _currentPosition = LatLng(-6.920339, 109.161091);
//   late Response response;
//   Dio dio = Dio();
//   bool error = false; //for error status
//   bool loading = false; //for data featching status
//   String errmsg = ""; //to assing any error message from API/runtime
//   var apidata; 
  
//   Completer<GoogleMapController> _controller = Completer();
//   static final CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(-6.922304, 109.161357),
//     zoom: 14.4746,
//   );

//   static final CameraPosition _kLake = CameraPosition(
//     bearing: 192.8334901395799,
//     target: LatLng(-6.922304, 109.161357),
//     tilt: 59.440717697143555,
//     zoom: 19.151926040649414
//   );

//   Future<Map> getData() async {
//     setState(() {
//         loading = true;  //make loading true to show progressindicator
//     });
//     Uri baseUrl = Uri.parse("http://192.168.42.185/jadwal_sampah/public/api/laporan");
//     final apiresponse =  await http.get(baseUrl);
//     var listData = jsonDecode(apiresponse.body);
//     setState(() {
//       apidata = listData;
  
     
//     });

//     print("Oke Ini Apimya : $apidata");
//     print(apidata["data"][0]["email"]);
    
//     setState(() {
//       loading = false;
//     }); //refresh UI 
//     return json.decode(apiresponse.body);
//   }
  

//   loaddata(){
//     loading?
//         apidata["data"].map<Widget>((country){
//         _markers.add(
//           Marker(
//             markerId: MarkerId(apidata["id"].toString()),
//             position: LatLng(apidata['latitude'], apidata['longitude']),
//             icon: BitmapDescriptor.defaultMarker,
//           ),
//         );
//       print("Gagal Banget" + apidata["id"].toString());
//       }).toList():
//       print("Gagal Banget");
//   }

//   @override
//   void initState() {
//       getData();
//     // _markers.add(
//     //   Marker(
//     //     markerId: MarkerId("-6.920339, 109.161091"),
//     //     position: _currentPosition,
//     //     icon: BitmapDescriptor.defaultMarker,
//     //   ),
//     // );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           onPressed: (){
//             Navigator.pop(context);
//           }, 
//           icon: Icon(Icons.arrow_back_ios, color: Color(0xFF22215B),)
//         ),
//         title: Text(
//           'Laporan Masuk ',
//           style: GoogleFonts.lato(
//             fontSize: 25,
//             color: Color(0xFF22215B)
//           ),
//         ),
//       ),
        
//       //source code lanjutan
//       //buat body untuk tab viewnya
//       // body: Container(
//       //    alignment: Alignment.topCenter,
//       //      padding: EdgeInsets.all(20),
//       //       child: loading?
//       //        CircularProgressIndicator(): //if loading == true, show progress indicator
//       //        Container( //if there is any error, show error message
//       //          child:error?Text("Error: $errmsg"):
//       //          Column(  //if everything fine, show the JSON as widget
//       //             children:apidata["data"].map<Widget>((country){
//       //                 return Card(
//       //                    child: ListTile( 
//       //                          title: Text(country["email"]),
                               
//       //                    ),
//       //                 );
//       //             }).toList(),
//       //          )
//       //        )  
//       // )
//       body: Container(
//         child: loading?
//         CircularProgressIndicator():
//         GoogleMap(
//           mapType: MapType.hybrid,
//           initialCameraPosition: _kGooglePlex,
//           onMapCreated: (GoogleMapController controller) {
//             _controller.complete(controller);
//           },
//           markers: 
//             Set<Marker>.of(
//               apidata["data"].map<dynamic>((country){
//               // _markers.add(
//                 Marker(
//                   markerId: MarkerId("1"),
//                   position: LatLng(double.parse(country['latitude'].toString()), double.parse(country['longitude'].toString())),
//                   icon: BitmapDescriptor.defaultMarker,
//                 // ),
//               );
//               print("LatLng " + country['latitude']);
//             }).toList(),
//           )
//         )
//       ),
//     );
//   }
// }



class MapSample extends StatefulWidget {
  @override
  _MapSampleState createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  late Future _future;
  late CallApi apiService;

  // Future<String> loadString() async {
  //     Uri baseUrl = Uri.parse("http://192.168.42.185/jadwal_sampah/public/api/laporan");
  //   final apiresponse =  await http.get(baseUrl);
  //   return json.decode(apiresponse.body);
  // }

  
  List<Marker> allMarkers = [];
  // late GoogleMapController _controller;
  final LatLng _currentPosition = LatLng(-6.920339, 109.161091);
    Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.922304, 109.161357),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(-6.922304, 109.161357),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiService = CallApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              FutureBuilder(
                future: apiService.getget(),
                builder: (BuildContext context, AsyncSnapshot<List<Local>> snapshot) {
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }
                  List<Local> profiles = snapshot.data!;
                  allMarkers = profiles.map((element) {
                    return Marker(
                        markerId: MarkerId(element.id.toString()),
                        position: LatLng(double.parse(element.latitude), double.parse(element.longitude)));
                  }).toList();
                  return GoogleMap(
                    mapType: MapType.hybrid,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                    markers: Set.from(allMarkers),
                  );
                },
              ),
            ]
          ),
        ),
      ]),
    );
  }
  void mapCreated(controller) {
    setState(() {
      _controller = controller;
    });
  }
}
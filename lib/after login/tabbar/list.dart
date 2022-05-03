// ignore_for_file: use_key_in_widget_constructors, camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class listpage extends StatelessWidget {
  var now = DateFormat("EEEEE").format(DateTime.now());
  var bulan = DateFormat("dd MMM yyyy").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      body: Container(
        child:  Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              Material(
                elevation: 5,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  height: 120,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Container(
                        width: 90,
                        child:Image.asset('assets/icons/profile.png',
                          height: 80,
                          //width: 160,
                        ),
                      ),
                      Container(
                        width: 200,
                        margin: EdgeInsets.only(top: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment:  MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 158,
                                  child: Text(
                                    "Hermawan",
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  //color: Colors.amber,
                                  width: 158,
                                  child: Text(
                                    now == "Friday" ? "Jumat, $bulan" : now == "Saturday" ? "Sabtu, $bulan" : now == "Sunday" ? "Minggu, $bulan" : now == "Monday" ? "Senin, $bulan" : now == "Tuesday" ? "Selasa, $bulan" : now == "Wednesday" ? "Rabu, $bulan" : "Kamis, $bulan",
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(height: 7),
                                Container(
                                  width: 158,
                                  child: Text(
                                    "RT.03 - Rw.02",
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 13),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: (){

                              }, 
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Angkut',
                                    style: GoogleFonts.lato(
                                        fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary:  Colors.green,
                                fixedSize: Size(85,0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                )
                              ),
                            ),
                            ElevatedButton(
                              onPressed: (){

                              }, 
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Tunggu',
                                    style: GoogleFonts.lato(
                                        fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary:  Colors.amber,
                                fixedSize: Size(85,0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                )
                              ),
                            )
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Material(
                elevation: 5,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  height: 120,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      Container(
                        width: 90,
                        child:Image.asset('assets/icons/profile.png',
                          height: 80,
                          //width: 160,
                        ),
                      ),
                      Container(
                        width: 200,
                        margin: EdgeInsets.only(top: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment:  MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 158,
                                  child: Text(
                                    "Hermawan",
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  //color: Colors.amber,
                                  width: 158,
                                  child: Text(
                                    now == "Friday" ? "Jumat, $bulan" : now == "Saturday" ? "Sabtu, $bulan" : now == "Sunday" ? "Minggu, $bulan" : now == "Monday" ? "Senin, $bulan" : now == "Tuesday" ? "Selasa, $bulan" : now == "Wednesday" ? "Rabu, $bulan" : "Kamis, $bulan",
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(height: 7),
                                Container(
                                  width: 158,
                                  child: Text(
                                    "RT.03 - Rw.02",
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 13),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: (){

                              }, 
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Angkut',
                                    style: GoogleFonts.lato(
                                        fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary:  Colors.green,
                                fixedSize: Size(85,0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                )
                              ),
                            ),
                            ElevatedButton(
                              onPressed: (){

                              }, 
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Tunggu',
                                    style: GoogleFonts.lato(
                                        fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary:  Colors.amber,
                                fixedSize: Size(85,0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)
                                )
                              ),
                            )
                          ],
                        )
                      ),
                    ],
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
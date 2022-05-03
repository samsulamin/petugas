// ignore_for_file: prefer_const_constructors, avoid_print, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:intl/intl.dart';
import 'package:petugas/after%20login/contoh.dart';
import 'package:petugas/after%20login/laporan.dart';
import 'package:petugas/after%20login/peta.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var now = DateFormat("EEEEE").format(DateTime.now());
  var bulan = DateFormat("dd MMM yyyy").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  'DASHBOARD ',
                  style: GoogleFonts.lato(
                    fontSize: 25,
                    color: Color(0xFF22215B)
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 35,
                      width: 100,
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.circle, size: 15, color:  Colors.white),
                              SizedBox(width: 5),
                              Text("Online",
                                style: GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 2,
                        color: Colors.green,
                        //margin: EdgeInsets.all(10),
                      )
                    ),
                    Text(
                      now == "Friday" ? "Jumat, $bulan" : now == "Saturday" ? "Sabtu, $bulan" : now == "Sunday" ? "Minggu, $bulan" : now == "Monday" ? "Senin, $bulan" : now == "Tuesday" ? "Selasa, $bulan" : now == "Wednesday" ? "Rabu, $bulan" : "Kamis, $bulan",
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 170,
                  width: 400,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: CircularPercentIndicator(
                                animation: true,
                                animationDuration: 2000,
                                radius: 105,
                                lineWidth: 10,
                                percent: 0.93,
                                progressColor: Colors.green,
                                backgroundColor: Colors.amber.shade100,
                                circularStrokeCap: CircularStrokeCap.round,
                                center: Container(
                                  height: 85,
                                  child: Image.asset(
                                    'assets/icons/propet.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              width: 225,
                              margin: EdgeInsets.only(top: 15),
                              child: Column(
                                mainAxisAlignment:  MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Petugas Pengangkut".toUpperCase(),
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Agus Supriyanto",
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "+6280909912345",
                                    style: GoogleFonts.lato(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ]
                              ),
                            )
                          ],
                        ),
                      )
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(
                        width: 1
                      ),
                    ),
                    elevation: 2,
                    //color: Colors.greenAccent.shade100,
                    //margin: EdgeInsets.all(10),
                  )
                ),
                SizedBox(height: 20),
                Container(
                  height: 100,
                  width: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(
                        width: 1
                      ),
                    ),
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                        child: Container(
                          height: 40,
                          child: Row(
                            children: [
                              Image.asset('assets/icons/laporan.png'),
                              Container(
                                width: 150,
                                child: Text(
                                  "Total 50 Laporan yang perlu diangkut",
                                  style: GoogleFonts.lato(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                width: 110,
                                child: Column(
                                  children: [
                                    SizedBox(height: 5),
                                    Text(
                                      "1 : 50",
                                      style: GoogleFonts.lato(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green
                                      ),
                                    ),
                                    Text(
                                      "Sudah Terangkut",
                                      style: GoogleFonts.lato(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  height: 300,
                  width: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(
                        width: 1
                      ),
                    ),
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.circle, size: 15,),
                                SizedBox(width: 5),
                                Text( 
                                  'MENU ',
                                  style: GoogleFonts.lato(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.circle, size: 15,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  //color: Colors.black87,
                                  height: 100,
                                  width: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Material(
                                        //elevation: 4.0,
                                        clipBehavior: Clip.hardEdge,
                                        color: Colors.transparent,
                                        child: Column(
                                          // alignment: Alignment.bottomCenter,
                                          // fit: StackFit.passthrough,
                                          children: [
                                            Ink.image(
                                              image: AssetImage("assets/icons/lapor.png"),
                                              fit: BoxFit.cover,
                                              width: 50,
                                              height: 50,
                                              child: InkWell(
                                                onTap: () async {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => const laporanpage())
                                                  );
                                                }
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Laporan", 
                                                  style:  GoogleFonts.lato(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                  )
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  //color: Colors.black87,
                                  height: 100,
                                  width: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Material(
                                        //elevation: 4.0,
                                        clipBehavior: Clip.hardEdge,
                                        color: Colors.transparent,
                                        child: Column(
                                          // alignment: Alignment.bottomCenter,
                                          // fit: StackFit.passthrough,
                                          children: [
                                            Ink.image(
                                              image: AssetImage("assets/icons/riwayat.png"),
                                              fit: BoxFit.cover,
                                              width: 50,
                                              height: 50,
                                              child: InkWell(
                                                onTap: () async {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => MapSample())
                                                  );
                                                }
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Histori", 
                                                  style:  GoogleFonts.lato(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                  )
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  //color: Colors.black87,
                                  height: 100,
                                  width: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Material(
                                        //elevation: 4.0,
                                        clipBehavior: Clip.hardEdge,
                                        color: Colors.transparent,
                                        child: Column(
                                          // alignment: Alignment.bottomCenter,
                                          // fit: StackFit.passthrough,
                                          children: [
                                            Ink.image(
                                              image: AssetImage("assets/icons/jadwal.png"),
                                              fit: BoxFit.cover,
                                              width: 50,
                                              height: 50,
                                              child: InkWell(onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => contohPage())
                                                );
                                              }),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "jadwal", 
                                                  style:  GoogleFonts.lato(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                  )
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  //color: Colors.black87,
                                  height: 100,
                                  width: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Material(
                                        //elevation: 4.0,
                                        clipBehavior: Clip.hardEdge,
                                        color: Colors.transparent,
                                        child: Column(
                                          // alignment: Alignment.bottomCenter,
                                          // fit: StackFit.passthrough,
                                          children: [
                                            Ink.image(
                                              image: AssetImage("assets/icons/profil.png"),
                                              fit: BoxFit.cover,
                                              width: 50,
                                              height: 50,
                                              child: InkWell(
                                                onTap: () async {
                                                
                                                }
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Profile", 
                                                  style:  GoogleFonts.lato(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                  )
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  //color: Colors.black87,
                                  height: 100,
                                  width: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Material(
                                        //elevation: 4.0,
                                        clipBehavior: Clip.hardEdge,
                                        color: Colors.transparent,
                                        child: Column(
                                          // alignment: Alignment.bottomCenter,
                                          // fit: StackFit.passthrough,
                                          children: [
                                            Ink.image(
                                              image: AssetImage("assets/icons/information.png"),
                                              fit: BoxFit.cover,
                                              width: 50,
                                              height: 50,
                                              child: InkWell(onTap: () {
                                              
                                              }),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Tentang", 
                                                  style:  GoogleFonts.lato(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                  )
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  //color: Colors.black87,
                                  height: 100,
                                  width: 90,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Material(
                                        //elevation: 4.0,
                                        clipBehavior: Clip.hardEdge,
                                        color: Colors.transparent,
                                        child: Column(
                                          // alignment: Alignment.bottomCenter,
                                          // fit: StackFit.passthrough,
                                          children: [
                                            Ink.image(
                                              image: AssetImage("assets/icons/logout.png"),
                                              fit: BoxFit.cover,
                                              width: 50,
                                              height: 50,
                                              child: InkWell(onTap: () {
                                              
                                              }),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Logout", 
                                                  style:  GoogleFonts.lato(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold
                                                  )
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ),
                  )
                ),
                SizedBox(height:70),
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Ink.image(
                          image: AssetImage("assets/icons/iconp.png"),
                          fit: BoxFit.cover,
                          width: 35,
                          height: 35,
                          child: InkWell(onTap: () {
                          
                          }),
                        ),
                        SizedBox(width:10),
                        Text(
                          "PENGANGKUTAN\nSAMPAH",
                           style:  GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          )
                        )
                      ]
                    ),
                  ),
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}
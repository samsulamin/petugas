// ignore_for_file: unused_import, camel_case_types, unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petugas/after%20login/tabbar/list.dart';
import 'package:petugas/after%20login/tabbar/map.dart';

class laporanpage extends StatefulWidget {
  const laporanpage({ Key? key }) : super(key: key);

  @override
  State<laporanpage> createState() => _laporanpageState();
}

class _laporanpageState extends State<laporanpage> with SingleTickerProviderStateMixin {

  //create controller untuk tabBar
  late TabController controller;

  @override
  
  void initState(){
    controller = new TabController(vsync: this, length: 2);
    //tambahkan SingleTickerProviderStateMikin pada class _HomeState
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFF22215B),)
        ),
        title: Text(
          'Laporan Masuk ',
          style: GoogleFonts.lato(
            fontSize: 25,
            color: Color(0xFF22215B)
          ),
        ),
        bottom: new TabBar(
          labelColor: Colors.black,
          indicatorColor: Colors.blue,
          labelPadding: EdgeInsets.all(0),
          unselectedLabelStyle:  GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
          labelStyle:  GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Container(
                height: 30,
                child: Image.asset('assets/icons/map.png'),
              ), text: "Peta",
            ),
            new Tab(
              icon: new Container(
                height: 30,
                child: Image.asset('assets/icons/list.png'),
              ), text: "Daftar",
            ),
          ],
        ),
      ),
        
      //source code lanjutan
      //buat body untuk tab viewnya
      body: new TabBarView(
        //controller untuk tab bar
        controller: controller,
        children: <Widget>[
          new mappage(),
          new listpage(),
        ]
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace, unnecessary_new, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petugas/after%20login/dashboard.dart';


class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  var loading = false;
  TextEditingController mailController = TextEditingController(text: "+62");
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset(
                  'assets/img/login.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 110),
                    Text(
                      'SILAHKAN \nLOGIN',
                        style: GoogleFonts.lato(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 200,
                      child: Text(
                        'Gunakan No.hp dan Password yang sudah terdaftar. \njika kesulitan untuk login silahakn hubungi Petugas/Admin Desa Anda',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    TextField(
                      controller: mailController,
                      keyboardType: TextInputType.phone,
                      ///autocorrect: false,
                      showCursor: true,
                      style: GoogleFonts.lato(
                        fontSize: 18,
                      ),
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          size: 30,
                        ),
                        border: OutlineInputBorder(
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.blue.shade700
                          )
                        ),
                        labelText: "No.Hp / Email",
                        labelStyle: GoogleFonts.lato(
                          fontSize: 18,
                        )
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: passwordController,
                      autocorrect: false,
                      showCursor: true,
                      obscureText: true,
                      style: GoogleFonts.lato(
                          fontSize: 18,
                      ),
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 30,
                        ),
                        border: OutlineInputBorder(
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.blue.shade700
                          )
                        ),
                        labelText: "Password",
                        labelStyle: GoogleFonts.lato(
                          fontSize: 18,
                        )
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: (){

                                }, 
                                child: Text(
                                  "Lupa Password?",
                                  style: GoogleFonts.lato(
                                    fontSize: 18,
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Dashboard())
                            );
                          }, 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Login',
                                style: GoogleFonts.lato(
                                    fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.input),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary:  Colors.blue,
                            fixedSize: Size(125, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
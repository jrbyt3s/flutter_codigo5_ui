import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login2Page extends StatelessWidget {
  const Login2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF5FF),
      body: Stack(
        children: [
          //Fondo
          Stack(
            children: [
              Positioned(
                top: -200,
                right: -150,
                child: MyCircleWidget(
                  radius: 200,
                  colors: [
                    Color(0xffD74286),
                    Color(0xffE991B9),
                  ],
                ),
              ),
              Positioned(
                bottom: -180,
                left: -120,
                child: MyCircleWidget(
                  radius: 140,
                  colors: [
                    Color(0xff4E398B),
                    Color(0xff9C89D9),
                  ],
                ),
              ),
              Positioned(
                top: 230,
                right: 50,
                child: MyCircleWidget(
                  radius: 16,
                  colors: [
                    Color(0xff4E398B),
                    Color(0xff9C89D9),
                  ],
                ),
              ),
              Positioned(
                bottom: 100,
                right: -10,
                child: SemiCirculo(),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: MyCircleWidget(
                  radius: 20,
                  colors: [
                    Color(0xffD74286),
                    Color(0xffE991B9),
                  ],
                  child: Row(
                    children: [
                      SizedBox(width: 12),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //Formulario
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 170),
                Text(
                  "Create Your",
                  style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 124, 100, 200),
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Account!",
                  style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 124, 100, 200),
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email,
                        color: Color.fromARGB(255, 124, 100, 200)),
                    hintText: "email",
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 96, 71, 172), width: 2)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      width: 2,
                      color: Color(0xff9C89D9),
                    )),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock,
                        color: Color.fromARGB(255, 124, 100, 200)),
                    hintText: "Password",
                    suffixIcon: const Icon(Icons.visibility_off,
                        color: Color.fromARGB(255, 124, 100, 200)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 96, 71, 172), width: 2)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      width: 2,
                      color: Color(0xff9C89D9),
                    )),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 48.0,
                  child: ElevatedButton(
                    child: Text(
                      "Create Account",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 236, 93, 172),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SemiCirculo extends StatelessWidget {
  const SemiCirculo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1 * pi / 12,
      child: Container(
        height: 40,
        width: 80,
        decoration: const BoxDecoration(
          //color: Colors.red,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: [Color(0xff4E398B), Color(0xff9C89D9)],
          ),
        ),
        //child: Text("hola"),
      ),
    );
  }
}

class MyCircleWidget extends StatelessWidget {
  double radius;
  List<Color> colors;
  Widget? child;

  MyCircleWidget({required this.radius, required this.colors, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: colors,
        ),
        boxShadow: [
          BoxShadow(
            color: colors[0].withOpacity(0.7),
            blurRadius: 12,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: child == null ? Container() : child,
    );
  }
}

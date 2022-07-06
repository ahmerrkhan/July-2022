import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 200,
              left: -100,
              child: Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(150)),
                  color: Color(0x304599ff),
                ),
              ),
            ),
            Positioned(
              bottom: 5.0,
              right: -10.0,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Color(0x30cc33ff),
                ),
              ),
            ),
            Positioned(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 20,
                ),
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 90.0,
                    ),
                    _logo(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    _logoLabel(),
                    const SizedBox(
                      height: 110.0,
                    ),
                    _labelTextInpu("Email", "abc1@gmail.com", true),
                    const SizedBox(
                      height: 50.0,
                    ),
                    _labelTextInpu("Password", "*********", true),
                    const SizedBox(
                      height: 50.0,
                    ),
                    _loginButt(),
                    const SizedBox(
                      height: 40.0,
                    ),
                    _signUpButt(
                        "Don't have an account yet ?", const Color(0Xff909090)),
                    const SizedBox(
                      height: 20,
                    ),
                    _signUpButt("Sign Up", const Color(0Xff164276)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //all widgets define here

  //for logo
  Widget _logo() {
    return Center(
        child: SizedBox(
            height: 80.0,
            child: Image.network("https://uilogos.co/img/logomark/kyan.png")));
  }

  //for logo label
  Widget _logoLabel() {
    return Center(
      child: Text(
        "Login",
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
              fontSize: 34,
              color: Color(0XFF164276),
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }

  //for label text input
  Widget _labelTextInpu(String label, String hintText, bool isPass) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.josefinSans(
            textStyle: const TextStyle(
                color: Color(0xff8fa1b6),
                fontSize: 20.0,
                fontWeight: FontWeight.w600),
          ),
        ),
        TextField(
          obscureText: isPass,
          cursorColor: Colors.red,
          decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffdfe8f3))),
            hintText: hintText,
            hintStyle: GoogleFonts.josefinSans(
              textStyle: const TextStyle(
                  color: Color(0xffc5d2e1),
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0),
            ),
          ),
        ),
      ],
    );
  }

  //for login button
  Widget _loginButt() {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: const BoxDecoration(
          color: Color(0xff008fff),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Login",
          style: GoogleFonts.josefinSans(
            textStyle: const TextStyle(
                fontSize: 34, color: Colors.white, fontWeight: FontWeight.w800),
          ),
        ),
      ),
    );
  }

  //for signup label button
  Widget _signUpButt(String label, Color textColor) {
    return Text(
      label,
      style: GoogleFonts.josefinSans(
        textStyle: TextStyle(
            fontSize: 18, color: textColor, fontWeight: FontWeight.w800),
      ),
    );
  }
}

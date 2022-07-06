import 'package:flutter/material.dart';
import 'package:login_design_2/screens/login_screen.dart';
import 'package:login_design_2/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const loginScreen(),

      //all routes must invoke here
      routes: {
        "login": (context) => const loginScreen(),
        "register": (context) => const RegisterScreen(),
      },
    );
  }
}

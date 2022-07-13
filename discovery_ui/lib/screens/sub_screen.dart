import 'package:flutter/material.dart';

class subScreen extends StatelessWidget {
  String? title;

  subScreen(String stitle, {Key? key}) : super(key: key) {
    title = stitle;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title!,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 10.0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: TextButton(
          child: const Text("Back to Main Screen"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

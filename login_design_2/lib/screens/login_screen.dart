import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/login.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35.0, top: 130.0),
                child: const Text(
                  "Welcome \nBack",
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.48,
                  right: 35.0,
                  left: 35.0,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.5),
                          filled: true,
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.withOpacity(0.5),
                          filled: true,
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w400),
                        ),
                        CircleAvatar(
                          radius: 30.0,
                          backgroundColor: const Color(0xff4c505b),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "register");
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 18.0, color: Color(0xff4c505b)),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forget Password",
                              style: TextStyle(
                                  fontSize: 18.0, color: Color(0xff4c505b)),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

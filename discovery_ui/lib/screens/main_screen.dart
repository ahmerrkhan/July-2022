import 'package:discovery_ui/screens/sub_screen.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  String title = "Discover";
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: customBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: ontapp,
        selectedItemColor: Colors.amber[700],
        type: BottomNavigationBarType.fixed,
        items: [
          getBottom("Home"),
          getBottom("Search"),
          getBottom("Home"),
          getBottom("Search"),
        ],
      ),
    );
  }

  //function for change
  ontapp(val) {
    setState(() {
      currentindex = val;
    });
  }

  //for bottom navigation bar item

  BottomNavigationBarItem getBottom(String label) {
    return BottomNavigationBarItem(
        icon: const Icon(Icons.search), label: label);
  }

  //for custom body
  Widget customBody() {
    return Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        color: Colors.grey.shade300,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    getExpanded("beer", "Bars", "42 Places"),
                    getExpanded("dining", "Cafes ", "65 Places")
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    getExpanded("cuisine", "Cuisines", "13 Places"),
                    getExpanded("cafe", "Cafes ", "44 Places")
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    getExpanded("fast-food", "Fast Food", "112 Places"),
                    getExpanded("tracking", "Tracking", "2 Places")
                  ],
                ),
              ),
            ]));
  }

  Expanded getExpanded(String image, String title, String subtext) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(
              top: 10.0, left: 10.0, bottom: 10.0, right: 10.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            boxShadow: [
              BoxShadow(),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/$image.png",
                fit: BoxFit.cover,
                height: 80.0,
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(subtext),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return subScreen(title);
          }));
        },
      ),
    );
  }
}

import 'package:dark_mode/preferences/styles.dart';
import 'package:dark_mode/preferences/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider themeProvider = ThemeProvider();
  String title = "Dark Theme";
  bool switchValue = false;
  void getCurrentTheme() async {
    themeProvider.darkTheme = await themeProvider.preference.getTheme();
  }

  @override
  void initState() {
    // TODO: implement initState
    getCurrentTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => themeProvider,
      child: Consumer<ThemeProvider>(builder: (context, value, child) {
        return MaterialApp(
          theme: Style.themeData(themeProvider.darkTheme),
          home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            drawer: customDrawer(),
            body: const Center(
              child: Text(
                "Hello World",
              ),
            ),
          ),
        );
      }),
    );
  }

  Drawer customDrawer() {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Muhammad Ahmer Khan"),
            accountEmail: const Text("mahmerk99@gmail.com"),
            currentAccountPicture:
                CircleAvatar(backgroundColor: Colors.blue.withOpacity(0.8)),
          ),
          ListTile(
            title: const Text("Change Theme"),
            subtitle: const Text("Bright/Dark Theme"),
            trailing: Switch(
                value: switchValue,
                onChanged: (val) {
                  themeProvider.darkTheme = !themeProvider.darkTheme;
                  setState(() {
                    switchValue = val;
                  });
                }),
          )
        ],
      ),
    );
  }
}

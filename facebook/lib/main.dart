import 'dart:async';

// import 'dart:js';

import '../facebook/logo.dart';

import '../Facebook/home.dart';
import '../loginPage/login_Page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        // useMaterial3: true,
        primarySwatch: Colors.blueGrey,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),

      //   ----------- facebook ---------
      home: FacebookLogo(),
      //   ---------------facebook home Page -
      // home: FacebookHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // static const String KEYNAME = "LOGIN";
  int _counter = 0;

  static const String KEYLOGIN = 'login';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WhereToGO();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Container'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
            child: Icon(
          Icons.account_circle,
          color: Colors.white,
          size: 100,
        )),
      ),
    );
  }

  void WhereToGO() async {
    var sharedPrefs = await SharedPreferences.getInstance();
    var isloggedIn = sharedPrefs.getBool(KEYLOGIN);

    Timer(Duration(seconds: 1), () {
      if (isloggedIn != null) {
        if (isloggedIn) {
          Navigator.pushReplacement(context as BuildContext,
              MaterialPageRoute(builder: (context) => FacebookHomePage()));
        } else {
          Navigator.pushReplacement(context as BuildContext,
              MaterialPageRoute(builder: (context) => LoginPage()));
        }
      } else {
        Navigator.pushReplacement(context as BuildContext,
            MaterialPageRoute(builder: (context) => LoginPage()));
      }
    });
  }
}

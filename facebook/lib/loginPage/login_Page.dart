import '../main.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Facebook/home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<StatefulWidget> {
  var uEmail = TextEditingController();
  var uPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 21,
                ),
                TextField(
                  controller: uEmail,
                  decoration: InputDecoration(
                      label: Text("Enter your email"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
                SizedBox(
                  height: 21,
                ),
                TextField(
                  obscureText: true,
                  controller: uPass,
                  decoration: InputDecoration(
                      label: Text("Enter your Password"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
                SizedBox(
                  height: 21,
                ),
                ElevatedButton(
                    onPressed: () async {
                      var prefs = await SharedPreferences.getInstance();
                      prefs.setBool(MyHomePageState.KEYLOGIN, true);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FacebookHomePage()));

                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => SavedPage(),
                      //     ));
                    },
                    child: Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

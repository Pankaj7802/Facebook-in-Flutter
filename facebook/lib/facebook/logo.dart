import 'package:facebook/main.dart';
import 'package:flutter/material.dart';

class FacebookLogo extends StatefulWidget {
  @override
  State<FacebookLogo> createState() => _FacebookLogoState();
}

class _FacebookLogoState extends State<FacebookLogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook Home Page"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(title: "Home Page"),
                  ));
            },
            child: Container(
              width: 300,
              height: 300,
              color: Colors.white70,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.facebook,
                      size: 200,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                          text: "facebook",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              fontFamily: "italic",
                              color: Colors.blue)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

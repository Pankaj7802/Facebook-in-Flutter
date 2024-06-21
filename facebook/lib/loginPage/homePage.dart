import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Page")),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.blue.shade400,
        child: Center(
            child: Icon(
          Icons.home,
          color: Colors.white,
          size: 100,
        )),
      ),
    );
  }
}

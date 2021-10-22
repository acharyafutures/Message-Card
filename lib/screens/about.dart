import 'package:flutter/material.dart';

class AboutClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About this App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
                "This is the app I built while learning flutter app development"),
          ),
          RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Go Back!",
                style: TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }
}

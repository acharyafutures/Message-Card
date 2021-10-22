import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData mode = ThemeData.light();
  Color changeColor = Colors.red;
  String changeText = "Type below to change me";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mode,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 250.0,
                  width: double.infinity,
                  child: Center(child: Text("Message Card App")),
                  color: changeColor,
                ),
              ),
              ListTile(
                title: Text(
                  "Rate App",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              ListTile(
                title: Text(
                  "Test 1",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              ListTile(
                title: Text(
                  "Test 2",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: changeColor,
          title: Center(child: Text("Message Card")),
          actions: [
            IconButton(
                icon: Icon(Icons.lightbulb_outline),
                onPressed: () {
                  setState(() {
                    if (mode == ThemeData.dark()) {
                      mode = ThemeData.light();
                    } else {
                      mode = ThemeData.dark();
                    }
                  });
                })
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: changeColor,
                height: 300,
                width: double.infinity,
                child: Center(
                  child: Text(
                    changeText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontFamily: 'cursive',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (String newValue) {
                  setState(
                    () {
                      changeText = newValue;
                    },
                  );
                },
                maxLength: 30,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: changeColor),
                  labelText: "Write your Message",
                  hintText: "Your Message Here",
                  helperText: "What you write will be displayed in cards",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: changeColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: changeColor),
                  ),
                  prefixIcon: Icon(Icons.edit, color: changeColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            changeColor = Colors.red;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            changeColor = Colors.blue;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            changeColor = Colors.black;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            changeColor = Colors.orange;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

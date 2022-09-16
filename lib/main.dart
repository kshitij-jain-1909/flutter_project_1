import 'package:flutter/material.dart';

void main() {
  runApp(new flutter_application_1());
}

class flutter_application_1 extends StatelessWidget {
  const flutter_application_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mytext = "Hello JKLU";

  void _changeText() {
    setState(() {
      if (mytext.startsWith("H")) {
        mytext = "Welcome in JKLU";
      } else {
        mytext = "Hello JKLU";
      }
    });
  }

  Widget _bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(7.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(mytext),
            new RaisedButton(
              child: new Text("Click"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: _changeText,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("HomePage"),
        ),
        body: _bodyWidget());
  }
}

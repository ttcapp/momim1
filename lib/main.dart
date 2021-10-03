import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
String btnText="batten";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: Text("momin"),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text(btnText),
              color: Colors.amber,
              onPressed: (){
              setState(() {
                btnText="one";
              });
          }
          )
        ],
      ),
    );
  }
}


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
      debugShowCheckedModeBanner: false,
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
        title: Text("MOMIN"),
      ),
      body:
      SingleChildScrollView(
        child:       Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                  child: Text(btnText),
                  color: Colors.amber,
                  onPressed: (){
                    setState(() {
                      btnText="one click";
                    });
                  }
              ),
              Container(
                height: 200,
                  width: 150,
                  child: Image.network("https://cdn.pixabay.com/photo/2016/02/17/19/08/lotus-1205631_960_720.jpg"
                  )),
              Container(
                  height: 200,
                  width: 150,
                  child:
                  Image.asset("assets/images/images1.jpg"),
              ),
            ],
          ),
        ),
      )
    );
  }
}


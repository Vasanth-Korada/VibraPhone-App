import 'package:flutter/material.dart';
import 'package:vibraphone/homepage.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(new MaterialApp(
    title: "Vibraphone App",
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/XylophoneApp': (BuildContext context) => new XylophoneApp()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/XylophoneApp');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.red.shade400, Colors.pink.shade400])
          ),
          child: Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset('images/girl.png'),
                new SizedBox(
                  height: 45.0,
                ),
                SpinKitPumpingHeart(
                  color: Colors.white,
                  size: 50.0,
                ),
//                new CircularProgressIndicator(
//                  valueColor:
//                      new AlwaysStoppedAnimation<Color>(Colors.redAccent),
//                  strokeWidth: 5.0,
//                ),
              ],
            ),
          ),
        ));
  }
}

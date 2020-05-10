import 'package:wind_sail/pages/login.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class FirstPage extends StatefulWidget {
  @override
  _FirstPage createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    startTime();
    animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);

    animation = Tween<double>(
      begin: 0.3,
      end: 1.1,
    ).animate(animationController)
      ..addListener(() => setState(() {}));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment(0.2, 0.5),
                colors: [
                  Color.fromRGBO(170, 85, 255, 1),
                  Color.fromRGBO(88, 75, 221, 1),
                  Color.fromRGBO(56, 0, 191, 1),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50.0),
                          child: Transform.scale(
                            scale: animation.value,
                            child: Image.asset(
                              'assets/images/white_logo.png',
                              width: 60.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18.0,
                        ),
                        Text(
                          'Wind Sail',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    child: Image.asset(
                      'assets/images/illustration.png',
                      width: double.infinity,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}

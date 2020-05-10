import 'package:flutter/material.dart';
import 'explore_deals.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;

    var username = '';
    var password = '';

    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: _screenHeight * 0.45,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/images/logo_colors.png',
                              width: 75.0,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Wind',
                              style: TextStyle(
                                fontSize: 22.0,
                                decoration: TextDecoration.none,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Sail',
                              style: TextStyle(
                                fontSize: 22.0,
                                decoration: TextDecoration.none,
                                color: Color.fromRGBO(56, 0, 191, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: _screenHeight * 0.35,
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(right: 55.0, left: 55.0),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                onChanged: (text) {
                                  print("Username: $text");
                                  username = text;
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Username',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(right: 55.0, left: 55.0),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                onChanged: (text) {
                                  print("Password: $text");
                                  password = text;
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Password',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 30.0,
                            bottom: 10.0,
                          ),
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: () {
                              print('$username $password');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ExploreDeals(),
                                  ),
                                );
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0),
                            ),
                            padding: EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.5),
                                    offset: Offset(0.5, 0.5),
                                    blurRadius: 0.2,
                                    spreadRadius: 0.2,
                                  ),
                                ],
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(56, 0, 191, 1),
                                    Color.fromRGBO(88, 75, 221, 1),
                                    Color.fromRGBO(170, 85, 255, 1),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                constraints: BoxConstraints(
                                  maxWidth: 300.0,
                                  minHeight: 50.0,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "Sign In",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 20.0,
                            bottom: 20.0,
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Color.fromRGBO(56, 0, 191, 1),
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: _screenHeight * 0.20,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(5.0),
                        child: Image.asset(
                          'assets/images/illustration.png',
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

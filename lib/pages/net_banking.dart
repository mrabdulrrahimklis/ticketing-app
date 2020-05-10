import 'package:flutter/material.dart';
import 'package:wind_sail/pages/confirmation.dart';
import 'package:wind_sail/pages/flight_info.dart';
import 'package:wind_sail/pages/profile.dart';
import 'dart:math' as math;

enum SingingCharacter { lafayette, jefferson }

class NetBanking extends StatefulWidget {
  @override
  _NetBanking createState() => _NetBanking();
}

class _NetBanking extends State<NetBanking> {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;

    var username = '';
    var password = '';

    List<String> _locations = ['Bangaluru', 'Sarajevo', 'Istanbul', 'Bayern'];
    List<String> _num_adults = [
      '1 Adult',
      '2 Adult',
      '3 Adult',
      '4  Adult',
      '5  Adult'
    ];
    List<String> _num_childrens = [
      '0 Children',
      '1 Children',
      '2 Children',
      '3 Children',
      '4 Children'
    ];

    DateTime _date = DateTime.now();
    Future<Null> selectDate(BuildContext context) async {
      final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: DateTime(1970),
        lastDate: DateTime(2100),
      );

      if (picked != null && picked != _date) {
        setState(() {
          _date = picked;
          print(
            _date.toString(),
          );
        });
      }
    }

    String _selectedLocation;
    SingingCharacter _character = SingingCharacter.lafayette;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment(-0.2, 0.9),
                    colors: [
                      Color.fromRGBO(170, 85, 255, 1),
                      Color.fromRGBO(88, 75, 221, 1),
                      Color.fromRGBO(56, 0, 191, 1),
                    ],
                  ),
                ),
                height: MediaQuery.of(context).size.height * .18,
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: _screenWidth * 0.065,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            'assets/images/back.png',
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            'Net Banking',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: _screenWidth * 0.065,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profile(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/images/user.png',
                            width: _screenWidth * 0.07,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .727,
                color: Colors.grey[300],
              )
            ],
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .13,
              right: 20.0,
              left: 20.0,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Card(
                    color: Colors.white,
                    elevation: 4.0,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 10.0,
                                )
                              ],
                            ),
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 5.0,
                                bottom: 5.0,
                                right: 15.0,
                                left: 15.0,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search Your Bank Here',
                                  icon: Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 7.0),
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
//                                        builder: (context) => FlightInfo(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(
                                        bottom: 20.0,
                                        top: 20.0,
                                        left: 15,
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              right: 10.0,
                                            ),
                                            child: Image.asset(
                                              'assets/images/azis_bank.png',
                                              height: 35.0,
                                              width: 35.0,
                                            ),
                                          ),
                                          Text(
                                            'Axis Bank',
                                            style: TextStyle(fontSize: 20.0),
                                          )
                                        ],
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 20.0,
                                  ),
                                  child: Icon(
                                    Icons.radio_button_unchecked,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Confirmation(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(
                                        bottom: 20.0,
                                        top: 20.0,
                                        left: 15,
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              right: 10.0,
                                            ),
                                            child: Image.asset(
                                              'assets/images/HDFC_Bank.png',
                                              height: 35.0,
                                              width: 35.0,
                                            ),
                                          ),
                                          Text(
                                            'HDFC Bank',
                                            style: TextStyle(fontSize: 20.0),
                                          )
                                        ],
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 20.0,
                                  ),
                                  child: Icon(
                                    Icons.radio_button_checked,
                                    color: Colors.lightGreenAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
//                                        builder: (context) => FlightInfo(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(
                                        bottom: 20.0,
                                        top: 20.0,
                                        left: 15,
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              right: 10.0,
                                            ),
                                            child: Image.asset(
                                              'assets/images/south_india_bank.png',
                                              height: 35.0,
                                              width: 35.0,
                                            ),
                                          ),
                                          Text(
                                            'South India Bank',
                                            style: TextStyle(fontSize: 20.0),
                                          )
                                        ],
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 20.0,
                                  ),
                                  child: Icon(
                                    Icons.radio_button_unchecked,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
//                                        builder: (context) => FlightInfo(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(
                                        bottom: 20.0,
                                        top: 20.0,
                                        left: 15,
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              right: 10.0,
                                            ),
                                            child: Image.asset(
                                              'assets/images/sbi.png',
                                              height: 35.0,
                                              width: 35.0,
                                            ),
                                          ),
                                          Text(
                                            'State Bank Of India',
                                            style: TextStyle(fontSize: 20.0),
                                          )
                                        ],
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 20.0,
                                  ),
                                  child: Icon(
                                    Icons.radio_button_unchecked,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
//                                        builder: (context) => FlightInfo(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(
                                        bottom: 20.0,
                                        top: 20.0,
                                        left: 15,
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              right: 10.0,
                                            ),
                                            child: Image.asset(
                                              'assets/images/standard_cahrter.png',
                                              height: 35.0,
                                              width: 35.0,
                                            ),
                                          ),
                                          Text(
                                            'Standard Charter',
                                            style: TextStyle(fontSize: 20.0),
                                          )
                                        ],
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 20.0,
                                  ),
                                  child: Icon(
                                    Icons.radio_button_unchecked,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('A'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('B'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forward),
            title: Text('C'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.four_k),
            title: Text('D'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.threesixty),
            title: Text('D'),
          ),
        ],
      ),
    );
  }
}

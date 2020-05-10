import 'package:flutter/material.dart';
import 'package:wind_sail/pages/personal_info.dart';
import 'package:wind_sail/pages/profile.dart';
import 'explore_deals.dart';
import 'dart:math' as math;

enum SingingCharacter { lafayette, jefferson }

class FlightInfo extends StatefulWidget {
  @override
  _FlightInfo createState() => _FlightInfo();
}

class _FlightInfo extends State<FlightInfo> {
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
          new Column(
            children: <Widget>[
              new Container(
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
                height: MediaQuery.of(context).size.height * .3,
                child: Container(
                  margin: EdgeInsets.only(top: 65.0),
                  child: Column(
                    children: <Widget>[
                      Row(
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
                                'Flight Listing',
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
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 30.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Mon, 14 Dec',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                    Text(
                                      'Bangaluru',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                      ),
                                    ),
                                    Text(
                                      'Karnataka, India',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Transform.rotate(
                                            angle: 180 * math.pi / 360,
                                            child: Icon(
                                              Icons.flight,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Mon, 15 Dec',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                    Text(
                                      'New York',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25.0,
                                      ),
                                    ),
                                    Text(
                                      'Queens, NY, USA',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .6,
                color: Colors.grey[300],
              )
            ],
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .25,
              right: 20.0,
              left: 20.0,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
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
                                  top: 20.0,
                                  bottom: 20.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                      child: Image.asset(
                                        'assets/images/lufthansen.png',
                                        width: 200.0,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        '12h 05m',
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
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
                                          builder: (context) => Profile(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 200.0,
                                      margin: EdgeInsets.only(
                                        bottom: 10.0,
                                        top: 10.0,
                                        left: 15,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: 195,
                                            child: Text(
                                              'Total Fare',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 195,
                                            child: Text(
                                              'Including Tax',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              '\$527',
                                              style: TextStyle(
                                                fontSize: 25,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          right: 15,
                                          left: 10.0,
                                        ),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.grey,
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(
                                            bottom: 12.0,
                                            top: 12.0,
                                            left: 15,
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                'Fare Information',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 23.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                          width: 0.5,
                                          color: Color.fromRGBO(184, 184, 184, 1),
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Transform.rotate(
                                              angle: math.pi * 90,
                                              child: Container(
                                                margin: EdgeInsets.all(20.0),
                                                child: Column(
                                                  children: <Widget>[
                                                    Image.asset(
                                                      'assets/images/wallet.png',
                                                      width: 55.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            bottom: 15.0,
                                            top: 15.0,
                                            left: 15,
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                width: 250.0,
                                                child: Text(
                                                  'Partially Refundable Fare',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 3.0,),
                                                width: 250.0,
                                                child: Text(
                                                  'View Fare Rules',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Colors.deepPurple,
                                                      fontSize: 15.0,),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(
                                            bottom: 10.0,
                                            top: 10.0,
                                            left: 15,
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              Text(
                                                'Secure Your Trip',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 23.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(
                                          width: 0.5,
                                          color: Color.fromRGBO(184, 184, 184, 1),
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Transform.rotate(
                                              angle: math.pi * 90,
                                              child: Container(
                                                margin: EdgeInsets.all(20.0),
                                                child: Column(
                                                  children: <Widget>[
                                                    Image.asset(
                                                      'assets/images/defend.png',
                                                      width: 55.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            bottom: 15.0,
                                            top: 15.0,
                                          ),
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                width: 250.0,
                                                child: Text(
                                                  'Secure My Trip With Insurance',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(top: 3.0),
                                                width: 250.0,
                                                child: Text(
                                                  'View Terms & Conditions',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Colors.deepPurple,
                                                      fontSize: 15.0),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25.0),
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PersonalInfo(),
                            ),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(38, 199, 25, 1),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 300.0,
                              minHeight: 50.0,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Book Flight",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
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

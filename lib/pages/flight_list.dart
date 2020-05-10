import 'package:flutter/material.dart';
import 'package:wind_sail/pages/flight_info.dart';
import 'package:wind_sail/pages/profile.dart';
import 'dart:math' as math;

enum SingingCharacter { lafayette, jefferson }

class FlightListing extends StatefulWidget {
  @override
  _FlightListing createState() => _FlightListing();
}

class _FlightListing extends State<FlightListing> {
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
                                top: 25.0,
                                bottom: 25.0,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'BLR',
                                          style: TextStyle(
                                            fontSize: 25.0,
                                          ),
                                        ),
                                        Text(
                                          'Mon, 14 Dec',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          height: 1,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            border: Border(
                                              top: BorderSide(
                                                width: 0.5,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Transform.rotate(
                                          angle: 180 * math.pi / 360,
                                          child: Icon(
                                            Icons.flight,
                                          ),
                                        ),
                                        Container(
                                          height: 1,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            border: Border(
                                              top: BorderSide(
                                                width: 0.5,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'JFK',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 25.0,
                                          ),
                                        ),
                                        Text(
                                          'Mon, 15 Dec',
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 40.0,
                            margin: EdgeInsets.only(top: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                    bottom: 10,
                                    left: 15,
                                  ),
                                  child: Text(
                                    '50 Search Results',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,
                                        color: Colors.grey),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    bottom: 10,
                                    right: 15,
                                  ),
                                  child: Image.asset(
                                    'assets/images/filter.png',
                                    height: 25.0,
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
                                        builder: (context) => FlightInfo(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      bottom: 20.0,
                                      top: 20.0,
                                      left: 15,
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Lufthansa Airline',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 25.0,
                                          ),
                                        ),
                                        Text(
                                          '10 Results',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.grey,
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
                                            '\$500',
                                            style: TextStyle(
                                              fontSize: 25,
                                            ),
                                          ),
                                          Text(
                                            'Onwards',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        bottom: 10,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                    bottom: 15.0,
                                    top: 15.0,
                                    left: 15,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Emirates Airline',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                      Text(
                                        '9 Results',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            '\$550',
                                            style: TextStyle(
                                              fontSize: 25,
                                            ),
                                          ),
                                          Text(
                                            'Onwards',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        bottom: 10,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                    bottom: 15.0,
                                    top: 15.0,
                                    left: 15,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Air China',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                      Text(
                                        '12 Results',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            '\$580',
                                            style: TextStyle(
                                              fontSize: 25,
                                            ),
                                          ),
                                          Text(
                                            'Onwards',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        bottom: 10,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                    bottom: 15.0,
                                    top: 15.0,
                                    left: 15,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Fly Dubai',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                      Text(
                                        '6 Results',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            '\$590',
                                            style: TextStyle(
                                              fontSize: 25,
                                            ),
                                          ),
                                          Text(
                                            'Onwards',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        bottom: 10,
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
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  width: 0.5,
                                  color: Color.fromRGBO(184, 184, 184, 1),
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                    bottom: 15.0,
                                    top: 15.0,
                                    left: 15,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        'Turkish Airline',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                      Text(
                                        '22 Results',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            '\$610',
                                            style: TextStyle(
                                              fontSize: 25,
                                            ),
                                          ),
                                          Text(
                                            'Onwards',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        bottom: 10,
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
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(
                              bottom: 7.0,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  width: 0.5,
                                  color: Color.fromRGBO(184, 184, 184, 1),
                                ),
                              ),
                            ),
                            height: 25.0,
                            child: Text(
                              '. . .',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          )
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

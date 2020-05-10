import 'package:flutter/material.dart';
import 'package:wind_sail/pages/explore_deals.dart';
import 'package:wind_sail/pages/flight_info.dart';
import 'package:wind_sail/pages/profile.dart';
import 'dart:math' as math;

enum SingingCharacter { lafayette, jefferson }

class Confirmation extends StatefulWidget {
  @override
  _Confirmation createState() => _Confirmation();
}

class _Confirmation extends State<Confirmation> {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Congratulations!',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20.0,
              ),
              width: 300.0,
              child: Center(
                child: Text(
                  'You have successfully booked your flight ticket in WindSail ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 80.0,
                bottom: 40.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/plain_ciry.png',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              height: 50.0,
              child: RaisedButton(
                onPressed: () {
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
                      "Done",
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
                  top: 22.0,
                ),
                child: Center(
                  child: Text(
                    'View Full Summary',
                    style: TextStyle(fontSize: 22.0, color: Colors.deepPurple),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

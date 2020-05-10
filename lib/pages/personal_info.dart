import 'package:flutter/material.dart';
import 'package:wind_sail/pages/flight_info.dart';
import 'package:wind_sail/pages/payment_method.dart';
import 'package:wind_sail/pages/profile.dart';
import 'dart:math' as math;

enum SingingCharacter { lafayette, jefferson }

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfo createState() => _PersonalInfo();
}

class _PersonalInfo extends State<PersonalInfo> {
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
                            'Personal Info',
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
                                bottomRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
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
                                          'Bangaluru',
                                          style: TextStyle(
                                            fontSize: 25.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Transform.rotate(
                                          angle: 180 * math.pi / 360,
                                          child: Icon(
                                            Icons.flight,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          'New York',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 25.0,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            top: 3.0,
                                            left: 10.0,
                                          ),
                                          child: RotatedBox(
                                            quarterTurns: 1,
                                            child: Text(
                                              '...',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,
                                              ),
                                            ),
                                          ),
                                        )
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
                    margin: EdgeInsets.only(top: 7.0),
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
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
                                              'Travellers Information',
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
                                  child: Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(
                                        top: 15,
                                        bottom: 10,
                                        left: 15,
                                      ),
                                      child: Text(
                                        'Select Passengers',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 15,
                                    left: 15,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Center(
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.check_circle,
                                              color: Colors.lightGreenAccent,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                top: 10,
                                                bottom: 10,
                                                left: 10,
                                              ),
                                              child: Text(
                                                'Andrea Williams',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 15,
                                          ),
                                          child:  Image.asset(
                                            'assets/images/edit.png',
                                            height: 20.0,
                                            width: 20.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 15,
                                    left: 50,
                                    bottom: 5.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Center(
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.add_circle_outline,
                                              color: Colors.deepPurple,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                top: 10,
                                                bottom: 10,
                                                left: 10,
                                              ),
                                              child: Text(
                                                'Add New Passenger',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.deepPurple),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              top: 10, bottom: 10, left: 15),
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
                    margin: EdgeInsets.only(top: 7.0),
                    child: Card(
                      color: Colors.white,
                      elevation: 4.0,
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
                                              'Contact Information',
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
                                  child: Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(
                                        top: 15,
                                        bottom: 10,
                                        left: 15,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Text(
                                              'Email ID',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  'andreawilliams@gmail.com',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                    color: Colors.blueGrey,
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    right: 15,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/edit.png',
                                                    height: 20.0,
                                                    width: 20.0,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(
                                        top: 15,
                                        bottom: 10,
                                        left: 15,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Text(
                                              'Phone Number',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 18.0,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  '+91 9444567890',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                    color: Colors.blueGrey,
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      right: 15),
                                                  child: Image.asset(
                                                    'assets/images/edit.png',
                                                    height: 20.0,
                                                    width: 20.0,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(
                                        top: 15,
                                        bottom: 10,
                                        left: 15,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              children: <Widget>[
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    right: 10.0,
                                                  ),
                                                  child: Icon(
                                                    Icons.check_circle_outline,
                                                    size: 18.0,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Text(
                                                  'GST Number for Business Travel',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                    color: Colors.grey,
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 10.0,
                      left: 5,
                      right: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
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
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                          top: 15,
                          bottom: 10,
                          left: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: 10.0,
                                    ),
                                    child: Icon(
                                      Icons.check_circle,
                                      size: 18.0,
                                      color: Colors.purple,
                                    ),
                                  ),
                                  Text(
                                    'I agree to the Terms & Conditions and Fare Rules',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      color: Colors.grey,
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
                  Container(
                    margin: EdgeInsets.only(top: 25.0),
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PaymentMethod(),
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
                            "Proceed to Pay",
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

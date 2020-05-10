import 'package:flutter/material.dart';
import 'package:wind_sail/pages/flight_info.dart';
import 'package:wind_sail/pages/net_banking.dart';
import 'package:wind_sail/pages/profile.dart';
import 'dart:math' as math;

enum SingingCharacter { lafayette, jefferson }

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethod createState() => _PaymentMethod();
}

class _PaymentMethod extends State<PaymentMethod> {
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
                            'Payment Method',
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
                                          top: 18.0,
                                          bottom: 10.0,
                                          left: 15,
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            Text(
                                              'Payment Options',
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
                                  child: Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.only(
                                        bottom: 10,
                                        left: 15,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => NetBanking(),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              margin: EdgeInsets.all(10.0),
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        margin: EdgeInsets.all(
                                                          5.0,
                                                        ),
                                                        child: Image.asset(
                                                          'assets/images/card.png',
                                                          width: 50.0,
                                                          height: 50.0,
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: EdgeInsets.only(left: 5.0),
                                                        width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width -
                                                            200,
                                                        child: Column(
                                                          children: <Widget>[
                                                            Container(
                                                              width:
                                                              MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .width,
                                                              child: Text(
                                                                'Credit/Debit Card',
                                                                textAlign:
                                                                TextAlign
                                                                    .start,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                    22.0),
                                                              ),
                                                            ),
                                                            Container(
                                                              width:
                                                              MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .width,
                                                              child: Text(
                                                                'You can use all type of cards here',
                                                                textAlign:
                                                                TextAlign
                                                                    .start,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                    12.0),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        right: 15),
                                                    child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      color: Colors.grey,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(10.0),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.all(
                                                        5.0,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/law.png',
                                                        width: 50.0,
                                                        height: 50.0,
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.0),
                                                      width:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                          200,
                                                      child: Column(
                                                        children: <Widget>[
                                                          Container(
                                                            width:
                                                            MediaQuery.of(
                                                                context)
                                                                .size
                                                                .width,
                                                            child: Text(
                                                              'Net Banking',
                                                              textAlign:
                                                              TextAlign
                                                                  .start,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  22.0),
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                            MediaQuery.of(
                                                                context)
                                                                .size
                                                                .width,
                                                            child: Text(
                                                              'All major banks are supported',
                                                              textAlign:
                                                              TextAlign
                                                                  .start,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  12.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      right: 15),
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.grey,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(10.0),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.all(
                                                        5.0,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/wallet2.png',
                                                        width: 50.0,
                                                        height: 50.0,
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.0),
                                                      width:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                          200,
                                                      child: Column(
                                                        children: <Widget>[
                                                          Container(
                                                            width:
                                                            MediaQuery.of(
                                                                context)
                                                                .size
                                                                .width,
                                                            child: Text(
                                                              'Mobile Wallet',
                                                              textAlign:
                                                              TextAlign
                                                                  .start,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  22.0),
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                            MediaQuery.of(
                                                                context)
                                                                .size
                                                                .width,
                                                            child: Text(
                                                              'Use your mobile wallet',
                                                              textAlign:
                                                              TextAlign
                                                                  .start,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  12.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      right: 15),
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.grey,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(10.0),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.all(
                                                        5.0,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/gift_box.png',
                                                        width: 50.0,
                                                        height: 50.0,
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.0),
                                                      width:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                          200,
                                                      child: Column(
                                                        children: <Widget>[
                                                          Container(
                                                            width:
                                                            MediaQuery.of(
                                                                context)
                                                                .size
                                                                .width,
                                                            child: Text(
                                                              'Gift Card',
                                                              textAlign:
                                                              TextAlign
                                                                  .start,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  22.0),
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                            MediaQuery.of(
                                                                context)
                                                                .size
                                                                .width,
                                                            child: Text(
                                                              'Use to pay partial/ complete amount',
                                                              textAlign:
                                                              TextAlign
                                                                  .start,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  12.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      right: 15),
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.grey,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(10.0),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.all(
                                                        5.0,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/calendar.png',
                                                        width: 50.0,
                                                        height: 50.0,
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(left: 5.0),
                                                      width:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                          200,
                                                      child: Column(
                                                        children: <Widget>[
                                                          Container(
                                                            width:
                                                            MediaQuery.of(
                                                                context)
                                                                .size
                                                                .width,
                                                            child: Text(
                                                              'EMI',
                                                              textAlign:
                                                              TextAlign
                                                                  .start,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  22.0),
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                            MediaQuery.of(
                                                                context)
                                                                .size
                                                                .width,
                                                            child: Text(
                                                              'Easly pay your sum in installments',
                                                              textAlign:
                                                              TextAlign
                                                                  .start,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  12.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      right: 15),
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.grey,
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

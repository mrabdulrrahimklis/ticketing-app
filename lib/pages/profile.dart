import 'package:flutter/material.dart';
import 'package:wind_sail/pages/profile.dart';
import 'explore_deals.dart';

enum SingingCharacter { lafayette, jefferson }

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
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
          print(_date.toString());
        });
      }
    }

    String _selectedLocation;
    SingingCharacter _character = SingingCharacter.lafayette;

    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          height: _screenHeight * 0.33,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/klis.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 50.0, left: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/back.png',
                    height: 30.0,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  bottom: 20.0,
                  left: 20.0,
                ),
                child: Text(
                  'Abdulrahim Klis',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: _screenWidth * 0.065,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          height: _screenHeight * 0.47,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 30.0,
                        bottom: 30.0,
                        right: 50.0,
                        left: 30.0,
                      ),
                      child: Icon(Icons.shopping_basket),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      child: Text(
                        'Bucket List',
                        style: TextStyle(
                          fontSize: 25.0,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 30.0,
                        bottom: 30.0,
                        right: 50.0,
                        left: 30.0,
                      ),
                      child: Icon(Icons.mail),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      child: Text(
                        'Subscription',
                        style: TextStyle(
                          fontSize: 25.0,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 30.0,
                        bottom: 30.0,
                        right: 50.0,
                        left: 30.0,
                      ),
                      child: Icon(Icons.settings),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      child: Text(
                        'Profile Settings',
                        style: TextStyle(
                          fontSize: 25.0,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 30.0,
                        bottom: 30.0,
                        right: 50.0,
                        left: 30.0,
                      ),
                      child: Icon(Icons.exit_to_app),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 25.0,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: _screenHeight * 0.2,
          color: Colors.white,
          child: Image.asset(
            'assets/images/illustration.png',
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
          ),
        ),
      ],
    );
  }
}

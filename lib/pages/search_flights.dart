import 'package:flutter/material.dart';
import 'package:wind_sail/pages/flight_list.dart';
import 'package:wind_sail/pages/profile.dart';
import 'explore_deals.dart';

enum SingingCharacter { lafayette, jefferson }

class SearchFlight extends StatefulWidget {
  @override
  _SearchFlight createState() => _SearchFlight();
}

class _SearchFlight extends State<SearchFlight> {
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
          // The containers in the background
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
                            'Search Flight',
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
          // The card widget with top padding,
          // incase if you wanted bottom padding to work,
          // set the `alignment` of container to Alignment.bottomCenter
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
                            height: MediaQuery.of(context).size.height * 0.1,
                            child: Row(
                              children: <Widget>[
                                Radio(
                                  value: 1,
                                  activeColor: Colors.white,
                                ),
                                Text(
                                  'Round Trip',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                                Radio(
                                  value: 1,
                                ),
                                Text(
                                  'Onw Way',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                                Radio(
                                  value: 0,
                                ),
                                Text(
                                  'Multi Destination',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Center(
                                    child: Column(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.grey,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 1.0, color: Colors.grey),
                                          ),
                                          height: 40.0,
                                          width: 1.0,
                                          child: VerticalDivider(
                                            color: Colors.grey,
                                            thickness: 5,
                                            width: 20,
                                            indent: 10,
                                            endIndent: 30,
                                          ),
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 100.0,
                                        child: Text(
                                          'Departure From',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      DropdownButton(
                                        underline: SizedBox(),
                                        hint: Text('Bangaluru'),
                                        // Not necessary for Option 1
                                        value: _selectedLocation,
                                        onChanged: (newValue) {
                                          setState(
                                            () {
                                              _selectedLocation = newValue;
                                            },
                                          );
                                        },
                                        items: _locations.map((location) {
                                          return DropdownMenuItem(
                                            child: new Text(location),
                                            value: location,
                                          );
                                        }).toList(),
                                      ),
                                      Divider(
                                        height: 10.0,
                                      ),
                                      Container(
                                        width: 100.0,
                                        child: Text(
                                          'Arrivals At',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      DropdownButton(
                                        underline: SizedBox(),
                                        hint: Text('New York'),
                                        // Not necessary for Option 1
                                        value: _selectedLocation,
                                        onChanged: (newValue) {
                                          setState(
                                            () {
                                              _selectedLocation = newValue;
                                            },
                                          );
                                        },
                                        items: _locations.map((location) {
                                          return DropdownMenuItem(
                                            child: new Text(location),
                                            value: location,
                                          );
                                        }).toList(),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 120.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.0),
                                    ),
                                    Text(
                                      'BLR',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Divider(
                                      height: 30.0,
                                    ),
                                    Text(
                                      'JFK',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
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
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20.0,
                            bottom: 20.0,
                            left: 20.0,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: _screenWidth * 0.4,
                                  child: Text(
                                    'Departure',
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                  onTap: () {
                                    selectDate(context);
                                  },
                                  child: Text(
                                    'Mon, 14 Dec',
                                    style: TextStyle(fontSize: 20.0),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: _screenWidth * 0.4,
                                  child: Text(
                                    'Passengers',
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: Text('1 Adult'),
                                  value: _selectedLocation,
                                  onChanged: (newValue) {
                                    setState(
                                      () {
                                        _selectedLocation = newValue;
                                      },
                                    );
                                  },
                                  items: _num_adults.map((location) {
                                    return DropdownMenuItem(
                                      child: new Text(location),
                                      value: location,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20.0,
                            bottom: 20.0,
                            left: 10.0,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: _screenWidth * 0.4,
                                  child: Text(
                                    'Arrivals',
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                  onTap: () {
                                    selectDate(context);
                                  },
                                  child: Text(
                                    'Tue, 15 Dec',
                                    style: TextStyle(fontSize: 20.0),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: _screenWidth * 0.4,
                                  child: Text(
                                    'Passengers',
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: DropdownButton(
                                  underline: SizedBox(),
                                  hint: Text('0 Children'),
                                  value: _selectedLocation,
                                  onChanged: (newValue) {
                                    setState(
                                      () {
                                        _selectedLocation = newValue;
                                      },
                                    );
                                  },
                                  items: _num_childrens.map((location) {
                                    return DropdownMenuItem(
                                      child: new Text(location),
                                      value: location,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 4.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10),
                          width: _screenWidth - 70.0,
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  margin: EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    'Cabine Class',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      children: <Widget>[
                                        ClipOval(
                                          child: Container(
                                            height: 30.0,
                                            width: 30.0,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(25.0),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '',
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text('Business')
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: <Widget>[
                                        ClipOval(
                                          child: Container(
                                            color:
                                                Color.fromRGBO(250, 77, 136, 1),
                                            height: 30.0,
                                            width: 30.0,
                                            child: Center(
                                              child: Text(
                                                '',
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text('Economy')
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: <Widget>[
                                        ClipOval(
                                          child: Container(
                                            height: 30.0,
                                            width: 30.0,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(25.0),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '',
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text('Business')
                                      ],
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
                  Container(
                    margin: EdgeInsets.only(top: 25.0),
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FlightListing(),
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
                            "Search",
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

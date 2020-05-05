import 'package:expense_tracker/pages/mobileVerification.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _checkBoxValueM = false;
  var _checkBoxValueF = false;

  var _dropDownMonth = "Month";
  var _dropDownDay = "Day";
  var _dropDownYear = "Year";

  var _months = [
    "Month",
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  var _days = [
    "Day",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31"
  ];
  var _years = [
    "Year",
    "2000",
    "2001",
    "2002",
    "2003",
    "2004",
    "2005",
    "2006",
    "2007",
    "2008",
    "2009",
    "2010",
    "2011",
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
    "2020"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
            height: double.infinity,
            child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Create your Account",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Name",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 60,
                            child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  hintText: "Enter you Full Name"),
                            ),
                          )
                        ]),
                    SizedBox(height: 30),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Email",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 60,
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration:
                                  InputDecoration(hintText: "Enter you Email"),
                            ),
                          )
                        ]),
                    SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("\nGender"),
                        SizedBox(width: 30),
                        Checkbox(
                          value: _checkBoxValueM,
                          onChanged: (var value) {
                            setState(() {
                              _checkBoxValueM = true;
                            });
                          },
                        ),
                        Text("\nMale"),
                        SizedBox(width: 30),
                        Checkbox(
                          value: _checkBoxValueF,
                          onChanged: (var value) {
                            setState(() {
                              _checkBoxValueF = true;
                            });
                          },
                        ),
                        Text("\nFemale")
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Date of Birth"),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            DropdownButton<String>(
                              value: _dropDownMonth,
                              items: _months.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (String newValue) {
                                setState(() {
                                  this._dropDownMonth = newValue;
                                });
                              },
                            ),
                            SizedBox(width: 30),
                            DropdownButton<String>(
                              value: _dropDownDay,
                              items: _days.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (String newValue) {
                                setState(() {
                                  this._dropDownDay = newValue;
                                });
                              },
                            ),
                            SizedBox(width: 30),
                            DropdownButton<String>(
                              value: _dropDownYear,
                              items: _years.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (String newValue) {
                                setState(() {
                                  this._dropDownYear = newValue;
                                });
                              },
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 25.0),
                          width: double.infinity,
                          child: RaisedButton(
                            elevation: 5.0,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MobileVerification()));
                            },
                            padding: EdgeInsets.all(15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            color: Colors.blue,
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 1.5,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )))
      ],
    ));
  }
}

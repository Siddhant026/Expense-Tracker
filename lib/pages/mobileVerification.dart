import 'package:expense_tracker/pages/otp.dart';
import 'package:flutter/material.dart';

class MobileVerification extends StatefulWidget {
  MobileVerification({Key key}) : super(key: key);

  @override
  _MobileVerificationState createState() => _MobileVerificationState();
}

class _MobileVerificationState extends State<MobileVerification> {
  var _dropDownCode = "Code";
  var _codes = ["Code", "+91"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  MessageImage(),
                  SizedBox(height: 30),
                  Text(
                    "Mobile Verification",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Text("Please Enter you Mobile Number"),
                  SizedBox(height: 30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      DropdownButton<String>(
                        value: _dropDownCode,
                        items: _codes.map((String dropDownStringItem) {
                          return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem),
                          );
                        }).toList(),
                        onChanged: (String newValue) {
                          setState(() {
                            this._dropDownCode = newValue;
                          });
                        },
                      ),
                      SizedBox(width: 30),
                      SizedBox(
                          height: 60,
                          width: 188,
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                hintText: "Enter you Mobile Number"),
                          )),
                    ],
                  ),
                  SizedBox(height: 30),
                  FloatingActionButton(
                    child: Icon(Icons.navigate_next),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OTP_page()));
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MessageImage extends StatelessWidget {
  const MessageImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("assets/images/message.jpg");
    Image image = Image(
      image: assetImage,
    );
    return Container(child: image);
  }
}

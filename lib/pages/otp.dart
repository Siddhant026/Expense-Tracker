import 'package:flutter/material.dart';

class OTP_page extends StatefulWidget {
  OTP_page({Key key}) : super(key: key);

  @override
  _OTP_pageState createState() => _OTP_pageState();
}

class _OTP_pageState extends State<OTP_page> {
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
                      "Enter OTP",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Text(
                        "We have sent you access code via SMS for mobile number verification"),
                    SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                            height: 60,
                            width: 30,
                            child: TextField(
                              keyboardType: TextInputType.number,
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                            height: 60,
                            width: 30,
                            child: TextField(
                              keyboardType: TextInputType.number,
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                            height: 60,
                            width: 30,
                            child: TextField(
                              keyboardType: TextInputType.number,
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                            height: 60,
                            width: 30,
                            child: TextField(
                              keyboardType: TextInputType.number,
                            ))
                      ],
                    ),
                    SizedBox(height: 30),
                    FloatingActionButton(
                      child: Icon(Icons.navigate_next),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OTP_page()));
                      },
                    )
                  ],
                )),
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

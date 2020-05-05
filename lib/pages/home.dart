import 'package:expense_tracker/pages/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Column(children: <Widget>[
        SizedBox(height: 200,),
        LogoImage(),
        SizedBox(height: 100,),
        RaisedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'Get Started',
              style: TextStyle(fontSize: 20)
            ),
          ),
        ),
        ])),
    );
  }
}

class LogoImage extends StatelessWidget {
  const LogoImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("assets/images/logo.jpg");
    Image image = Image(
      image: assetImage,
    );
    return Container(child: image);
  }
}

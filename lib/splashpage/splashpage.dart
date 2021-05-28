import 'package:flutter/material.dart';
import 'package:ngoanduy_flutter/signinpage/signinpage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
  static String routeName = "/splash";
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    new Future.delayed(new Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, SignInPage.routeName, (Route<dynamic> route) => false);
    });

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.green
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 5,
              ),
              SizedBox(height: 5,),
              Text('Loading...', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)
            ],
          ) ,),
      ),
    );

  }
}

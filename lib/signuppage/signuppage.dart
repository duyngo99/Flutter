import 'package:flutter/material.dart';
import 'package:ngoanduy_flutter/signuppage/components/body.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
  static String routeName = "/sign_up";
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Body(),
    );
  }
}

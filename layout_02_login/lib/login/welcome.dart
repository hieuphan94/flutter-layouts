import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Text(
            "Welcome",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Automatic identity verification which enables you to verify your identity",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Image.asset("assets/images/Illustration.png"),
          SizedBox(
            height: 35,
          ),
          Container(
            width: 400,
            height: 50,
            child: MaterialButton(
              onPressed: () {print("login");},
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25)),
              child: Text("Login"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 400,
            height: 50,
            child: MaterialButton(
              onPressed: () {print("sign up");},
              color: Colors.yellow,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Text("Sign Up"),
            ),
          ),
        ],
      ),
    );
  }
}

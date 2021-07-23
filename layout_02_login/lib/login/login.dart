import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:layout_02_login/utils/constants.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF73AEF5),
                    Color(0xFF61A4F1),
                    Color(0xFF478DE0),
                    Color(0xFF398AE5),
                  ],
                  stops: [0.1, 0.4, 0.7, 0.9],
                )),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
                  child: Column(
                    children: [
                      Text("Sign In",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      _buildBoxSpacing(30),
                      _buildInputText(TextInputType.emailAddress, Icons.email,
                          'Enter your Email', false),
                      _buildBoxSpacing(30),
                      _buildInputText(TextInputType.visiblePassword, Icons.lock,
                          'Enter your Password', true),
                      _buildForgotPassword(),
                      _buildButton("Login"),
                      _buildBoxSpacing(30),
                      _buildSignInWithText(),
                      _buildBoxSpacing(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildSocial('assets/logos/facebook.jpg'),
                          _buildSocial('assets/logos/google.jpg'),
                        ],
                      ),
                      _buildBoxSpacing(30),
                      _buildSignUpText()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBoxSpacing(double spacing){
    return SizedBox(
      height: spacing,
    );
  }

  Widget _buildInputText(TextInputType inputType, IconData icon, String hintText, bool obscureText) {
    return Container(
      alignment: Alignment.center,
      decoration: kBoxDecorationStyle,
      child: TextField(
        obscureText: obscureText,
        keyboardType: inputType,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              icon,
              color: Colors.white,
            ),
            hintText: hintText,
            hintStyle: kHintTextStyle),
      ),
    );
  }

  Widget _buildForgotPassword() {
    return Container(
      alignment: Alignment.bottomRight,
      child: TextButton(
          onPressed: () => {print("Forgot Password")},
          child: Text(
            "Forgot Password",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget _buildButton(String btnText) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
              elevation: 5,
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: () => {print(btnText)},
          child: Text(
            btnText,
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),
          )),
    );
  }

  Widget _buildSignInWithText(){
    return Column(
      children: [
        Text("- OR -", style: TextStyle(color: Colors.white),),
        _buildBoxSpacing(20),
        Text("Sign in with", style: TextStyle(color: Colors.white),)
      ],
    );
  }

  Widget _buildSocial(String imgData){
    return GestureDetector(
      onTap: () => {print(imgData)},
      child: Container(
        width: 70,
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0
            )
          ],
          image: DecorationImage(
            image: AssetImage(imgData)
          )
        ),
      ),
    );
  }
  
  Widget _buildSignUpText(){
    return GestureDetector(
      onTap: () => {print("Sign Up")},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an Account? ", style: TextStyle(color: Colors.white),),
          Text(" Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }

}

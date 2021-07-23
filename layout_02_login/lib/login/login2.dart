import 'package:flutter/material.dart';
import 'package:layout_02_login/utils/constants.dart';

class Login2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 320,
              width: double.infinity,
              child: Stack(
                children: [
                  _buildBg1("assets/images/background.png"),
                  _buildBg2("assets/images/background-2.png"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  _buildBoxSpacing(30),
                  _buildHeading("Login"),
                  _buildBoxSpacing(30),
                  _buildRowInput(),
                  _buildBoxSpacing(15),
                  _buildTextButton("Forgot Password"),
                  _buildBoxSpacing(15),
                  _buildButton("Login"),
                  _buildBoxSpacing(15),
                  _buildTextButton("Create Account"),
                  _buildBoxSpacing(15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBg1(String str) {
    return Positioned(
        height: 300,
        width: 400,
        top: -30,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(str), fit: BoxFit.fill)),
        ));
  }

  Widget _buildBg2(String str) {
    return Positioned(
        height: 300,
        width: 420,
        right: -30,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background-2.png'),
                  fit: BoxFit.fill)),
        ));
  }

  Widget _buildHeading(String str) {
    return Container(
        alignment: Alignment.topLeft,
        child: Text(str, style: headingTextStyle));
  }

  Widget _buildBoxSpacing(double spacing) {
    return SizedBox(
      height: spacing,
    );
  }

  Widget _buildInput(String str, bool obscureText,) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey[300]))),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: str, hintStyle: hintTextStyle, border: InputBorder.none),
      ),
    );
  }

  Widget _buildRowInput() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(195, 135, 198, 1),
            blurRadius: 20.0,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildInput("Username", false),
          _buildInput("Password", true)
        ],
      ),
    );
  }

  Widget _buildTextButton(String str) {
    return TextButton(
        onPressed: () => {print(str)}, child: Text(str, style: textBtnStyle));
  }

  Widget _buildButton(String str) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: EdgeInsets.symmetric(vertical: 15),
              primary: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: () => {print(str)},
          child: Text(
            str,
            style: textEleBtnStyle,
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:layout_02_login/utils/constants.dart';

class Login3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: AnnotatedRegion(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topLeft, colors: [
              Colors.orange[900],
              Colors.orange[800],
              Colors.orange[400],
              Colors.orange[300],
            ])),
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Container(
                margin: EdgeInsets.only(top: 150),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          _buildHeading("Login"),
                          _buildBoxSpacing(10),
                          _buildSubHeading("Welcome Back"),
                          _buildBoxSpacing(20),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            topLeft: Radius.circular(40)
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _buildBoxSpacing(100),
                          _buildRowInput(),
                          _buildBoxSpacing(25),
                          _buildTextButton("Forgot Password"),
                          _buildBoxSpacing(25),
                          _buildButton(
                              "Login", Colors.deepOrangeAccent, double.infinity),
                          _buildBoxSpacing(25),
                          _buildTextNormal("Continue with social media"),
                          _buildBoxSpacing(25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildButton("Facebook", Colors.lightBlue, 150),
                              _buildButton("Github", Colors.black, 150),
                            ],
                          ),
                          _buildBoxSpacing(100),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeading(String str) {
    return Container(
        alignment: Alignment.topLeft,
        child: Text(str, style: headingTextStyle2));
  }


  Widget _buildSubHeading(String str) {
    return Container(
        alignment: Alignment.topLeft,
        child: Text(str, style: subHeadingTextStyle));
  }

  Widget _buildBoxSpacing(double spacing) {
    return SizedBox(
      height: spacing,
    );
  }

  Widget _buildInput(
    String str,
    bool obscureText,
  ) {
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
            color: Color.fromRGBO(198, 157, 135, 1.0),
            blurRadius: 20.0,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildInput("Email or Phone number", false),
          _buildInput("Password", true)
        ],
      ),
    );
  }

  Widget _buildTextNormal(String str) {
    return Text(str, style: normalTextStyle);
  }

  Widget _buildTextButton(String str) {
    return TextButton(
        onPressed: () => {print(str)}, child: Text(str, style: textBtnStyle));
  }

  Widget _buildButton(String str, Color color, double width) {
    return Container(
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: EdgeInsets.symmetric(vertical: 15),
              primary: color,
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

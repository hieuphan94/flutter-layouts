import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            "assets/images/main_top.png",
            width: size.width * 0.35,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            "assets/images/login_bottom.png",
            width: size.width * 0.45,
          ),
        ),
        Positioned(top: size.width * 0.2, child: Container(
          width: size.width, child: bodyLogin4(context)))
      ],
    );
  }

  Widget bodyLogin4(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.purple[200],
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.home, color: Colors.purple),
                hintText: "Your email:",
                border: InputBorder.none
              ),
            )
          ),
          Container(
              margin: EdgeInsets.symmetric(
                  vertical: 10
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(20)
              ),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.security, color: Colors.purple),
                    hintText: "Your password:",
                    border: InputBorder.none,
                  suffixIcon: Icon(Icons.visibility, color: Colors.purple,)
                ),
              )
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:layout_02_login/login/login.dart';
import 'package:layout_02_login/login/login2.dart';
import 'package:layout_02_login/login/login3.dart';
import 'package:layout_02_login/login/login4.dart';
import 'package:layout_02_login/login/login5.dart';
import 'package:layout_02_login/login/welcome.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Login5(),
      ),
    );
  }
}


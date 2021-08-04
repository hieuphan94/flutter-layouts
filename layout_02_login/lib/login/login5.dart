
import 'package:flutter/material.dart';

class Login5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Text("Login", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),),
            SizedBox(height: 15,),
            Text("Login to your account", textAlign: TextAlign.center, style: TextStyle(
                fontSize: 13
            ),),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Text("Email", style: TextStyle(fontSize: 15)),
                    SizedBox(height: 7,),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 7),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[400]),
                        ),
                      ),
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Text("Password", style: TextStyle(fontSize: 15)),
                    SizedBox(height: 7,),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 7),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400])
                        ),

                      ),
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Text("Confirm Password", style: TextStyle(fontSize: 15)),
                    SizedBox(height: 7,),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 7),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[400])
                        ),

                      ),
                    )
                  ],
                )),
            SizedBox(height: 35,),
            Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: MaterialButton(
                onPressed: () {print("Login");},
                color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Text("Login"),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                TextButton(
                    onPressed: (){print("Sign Up");},
                    child: Text("Sign Up", style: TextStyle(
                      color: Colors.black,
                    ),))
              ],
            ),
            Image.asset("assets/images/background2.png")
          ],
        ),
      ),
    );
  }
}

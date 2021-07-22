import 'package:flutter/material.dart';
import 'package:layout_01_tiktok/widget/actions_toolbar.dart';
import 'package:layout_01_tiktok/widget/bottom_toolbar.dart';
import 'package:layout_01_tiktok/widget/video_description.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white
          )
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            topSection,
            middleSection,
            BottomToolbar()
          ],
        ),
      ),
    );
  }
}

Widget get topSection => Container(
  height: 100,
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Following"),
      Container(
        width: 15,
      ),
      Text("For you", style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold
      ),)
    ],
  ),
);

Widget get middleSection => Expanded(child: Container(
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      VideoDescription(),
      ActionsToolbar()
    ],
  ),
));

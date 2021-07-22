import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("@hieuphan", style: TextStyle(fontWeight: FontWeight.bold),),
          Text("Video Title and some other stuff"),
          Row(
            children: [
              Icon(Icons.music_note, size: 20, color: Colors.white),
              Text("Artist name - Album name - song", style: TextStyle(fontSize: 12)),
            ],
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:layout_01_tiktok/tik_tok_icons_icons.dart';

class BottomToolbar extends StatelessWidget {
  static const double NavigationIconSize = 20.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            TikTokIcons.home,
            color: Colors.white,
            size: NavigationIconSize,
          ),
          Icon(
            TikTokIcons.search,
            color: Colors.white,
            size: NavigationIconSize,
          ),
          customCreateIcon,
          Icon(
            TikTokIcons.messages,
            color: Colors.white,
            size: NavigationIconSize,
          ),
          Icon(
            TikTokIcons.profile,
            color: Colors.white,
            size: NavigationIconSize,
          ),
        ],
      ),
    );
  }

  Widget get customCreateIcon => Container(
        width: 45,
        height: 27,
        child: Stack(
          children: [
            Container(
              width: 45,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 45, 108),
                  borderRadius: BorderRadius.circular(7.0)),
            ),
            Container(
              width: 45,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 32, 211, 234),
                  borderRadius: BorderRadius.circular(7.0)),
            ),
            Center(
              child: Container(
                width: 40,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.0)),
                child: Icon(
                  Icons.add,
                  size: 20,
                ),
              ),
            )
          ],
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:layout_01_tiktok/tik_tok_icons_icons.dart';

class ActionsToolbar extends StatelessWidget {
  static const double ActionWidgetSize = 60.0;
  static const double ActionIconSize = 35.0;
  static const double ShareActionIconSize = 25.0;
  static const double ProfileImageSize = 50.0;
  static const double PlusIconSize = 20.0;
  String imageUrl = 'https://avatars.githubusercontent.com/u/23730439?v=4';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _getFollowAction(),
          _getSocialAction('3.2m', TikTokIcons.heart),
          _getSocialAction('16.4k', TikTokIcons.chat_bubble),
          _getSocialAction('Share', TikTokIcons.reply),
          _getMusicPlayerAction(),
        ],
      ),
    );
  }

  Widget _getSocialAction(String title, IconData icon) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Column(
        children: [
          Icon(
            icon,
            size: ActionIconSize,
            color: Colors.grey[300],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(title, style: TextStyle(fontSize: 12)),
          )
        ],
      ),
    );
  }

  Widget _getFollowAction() {
    return Container(
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Stack(
        children: [_getProfilePicture(), _getPlusIcon()],
      ),
    );
  }

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 0,
      left: ActionWidgetSize / 2 - PlusIconSize / 2,
      child: Container(
        height: PlusIconSize,
        width: PlusIconSize,
        decoration: BoxDecoration(
            color: Colors.pink, borderRadius: BorderRadius.circular(15.0)),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20.0,
        ),
      ),
    );
  }

  Widget _getProfilePicture() {
    return Positioned(
      left: ActionWidgetSize / 2 - ProfileImageSize / 2,
      child: Container(
        width: ProfileImageSize,
        height: ProfileImageSize,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(ProfileImageSize)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(imageUrl)),
      ),
    );
  }

  LinearGradient get musicGradient => LinearGradient(colors: [
        Colors.grey[800],
        Colors.grey[900],
        Colors.grey[900],
        Colors.grey[800]
      ], stops: [
        0.0,
        0.4,
        0.6,
        1.0
      ], begin: Alignment.bottomLeft, end: Alignment.topRight);

  Widget _getMusicPlayerAction() {
    return Container(
        margin: EdgeInsets.only(top: 10.0),
        width: ActionWidgetSize,
        height: ActionWidgetSize,
        child: Column(children: [
          Container(
              padding: EdgeInsets.all(11.0),
              height: ProfileImageSize,
              width: ProfileImageSize,
              decoration: BoxDecoration(
                  gradient: musicGradient,
                  borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(imageUrl))),
        ]));
  }
}

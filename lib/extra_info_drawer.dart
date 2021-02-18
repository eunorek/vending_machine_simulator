import 'package:flutter/material.dart';

class ExtraInfoDrawer {
  Drawer _drawer = Drawer(
    child: ListView(
      children: const <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
              color: Colors.teal
          ),
          child: Text(
            'Drawer Menu New Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
              Icons.favorite
          ),
          title: Text('이 앱이 마음에 드셨다면...'),
          trailing: Icon(
              Icons.arrow_forward_ios
          ),
        ),
        ListTile(
          leading: Icon(
              Icons.face
          ),
          title: Text('제작자 정보'),
          trailing: Icon(
              Icons.arrow_forward_ios
          ),
        ),
        ListTile(
          leading: Icon(
              Icons.bug_report_outlined
          ),
          title: Text('오류 제보'),
          trailing: Icon(
              Icons.arrow_forward_ios
          ),
        ),
      ],
    ),
  );

  Drawer getExtraInfoDrawer(){
    return _drawer;
  }
}
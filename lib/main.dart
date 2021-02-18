import 'package:flutter/material.dart';

import 'extra_info_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Front Page',
      theme: ThemeData(
        primaryColor: Colors.orange,
      ),
      home: FrontPage()
    );
  }
}

class FrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Front Page'),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            Center(
                child: Text('Hello There!!')
            ),
          ],
        ),
      ),
      drawer: getExtraInfoDrawer()
    );
  }

  Drawer getExtraInfoDrawer() {
    ExtraInfoDrawer extraInfoDrawer = new ExtraInfoDrawer();
    return extraInfoDrawer.getExtraInfoDrawer();
  }
}






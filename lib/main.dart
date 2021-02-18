import 'package:flutter/material.dart';
import 'package:vending_machine_simulator/vending_machine.dart';

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
      // home: FrontPage(), // Redundant!!!
      initialRoute: '/',
      routes: {
        '/' : (context) => FrontPage(),
        '/VendingMachineMenu' : (context) => VendingMachineMenu(),
      },
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
        child: Column(
          // column 일때는 세로축을 기준으로 정렬
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
                'assets/images/misc/damgom.jpg',
                fit: BoxFit.fitWidth,
            ),
            Text(
                'Hello There!!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
            ),
            // 자판기 루트 이동 버튼
            RaisedButton(
                color: Colors.red,
                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Text(
                '시작하기',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                  ),
                ),
                onPressed: (){
                Navigator.of(context).pushNamed('/VendingMachineMenu');
            }
            )
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






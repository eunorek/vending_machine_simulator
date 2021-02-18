import 'package:flutter/material.dart';

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
        leading: IconButton(
          icon: Icon(
              Icons.help_outline,
              color: Colors.red
          ),
          onPressed: (){
            _drawHelpMenu(context);
            },
        ),
        title: Text('Vending Machine Simulator'),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            Center(
              child: Text('Hello There!!')
            ),
          ],
        ),
      )
    );
  }



  void _drawHelpMenu(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
          builder: (BuildContext context){
            return Scaffold(
              appBar: AppBar(),
              drawer: Drawer(
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
              ),
            );
          }
      )
    );
  }
}





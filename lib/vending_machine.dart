import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'dart:convert';

class VendingMachineMenu extends StatefulWidget {
  @override
  _VendingMachineMenuState createState() => _VendingMachineMenuState();
}

class _VendingMachineMenuState extends State<VendingMachineMenu> {
  
  int cash = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Virtual Vending Machine'),
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: null
          )
        ]
      ),
      body: Column(
        children: [
          Text('제품 목록 들어갈 자리~~'),
          Row(
            children : <Widget>[
              Text('남은 돈: '),
              Text(cash.toString()),
              IconButton(
                  icon: Icon(Icons.indeterminate_check_box_rounded),
                  onPressed: (){
                    _pay(100);
                  }
              )
            ]
          )
        ],
      )
    );
  }


  void _pay(int price) {
    setState(() {
      cash -= price;
    });
  }


}



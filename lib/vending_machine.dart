import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'dart:convert';

import 'package:flutter/services.dart';

class VendingMachineMenu extends StatefulWidget {
  @override
  _VendingMachineMenuState createState() => _VendingMachineMenuState();
}

class _VendingMachineMenuState extends State<VendingMachineMenu> {
  List productList;
  int cash = 10000;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.loadJsonData();
  }

  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/data/products_data.json');
    setState(() => productList = json.decode(jsonText));
    return 'json data parsed';
  }

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
              ),
              ListView.builder(
                  itemCount: productList != null ? productList.length : 0,
                  itemBuilder: (BuildContext context, int index){
                    var id = productList[index]['id'];
                    var name = productList[index]['name'];
                    var imgName = productList[index]['imgName'];
                    var price = productList[index]['price'];
                    var stock = productList[index]['stock'];

                    return new Column(
                      children: <Widget>[
                        new ListTile(
                          title: Text('name'),
                        ),
                        new Divider(),
                      ],
                    );
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

  GridView getProductGrid() {
    return GridView.count(
        crossAxisCount: 3,
    );
  }

}



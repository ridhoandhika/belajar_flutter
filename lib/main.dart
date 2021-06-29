// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(ATS());
}

class ATS extends StatefulWidget {
  ATS({Key key}) : super(key: key);

  @override
  _ATSState createState() => _ATSState();
}

class _ATSState extends State<ATS> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0.0,
          leading: Icon(Icons.home),
          title: Center(child: Text('Alam Tehnik Semesta')),
          actions: <Widget>[
            // IconButton(
            //   icon: Icon(Icons.attach_money),
            //   onPressed: () {},
            // ),
            // IconButton(
            //   icon: Icon(Icons.shopping_cart),
            //   onPressed: () {},
            // ),
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text('menu1')),
                PopupMenuItem(child: Text('menu2')),
                PopupMenuItem(child: Text('menu3'))
              ];
            })
          ],
        ),
        // body: Center(
        //   child: Text('Welcome to HRIS Alam Tehnik'),
        body: Container(
          margin: EdgeInsets.all(30),
          child: ListView(
            children: <Widget>[
              TextField(),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    // hintText: 'Jhon',
                    // icon: Icon(Icons.people),
                    prefixIcon: Icon(Icons.person)),
                maxLength: 12,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                    prefixIcon: Icon(Icons.phone)),
                maxLength: 50,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Price',
                    prefixIcon: Icon(Icons.attach_money)),
                maxLength: 50,
              )
            ],
          ),
        ), //
      ),
    );
  }
}

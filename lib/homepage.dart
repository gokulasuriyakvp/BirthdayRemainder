import 'package:flutter/material.dart';
import 'package:fluttter_birthday_remainder/alert_dialog_shared_preference.dart';

class Homepagemain extends StatefulWidget {
  const Homepagemain({super.key});

  @override
  State<Homepagemain> createState() => _HomepagemainState();
}

class _HomepagemainState extends State<Homepagemain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Birthday Remainder'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  'Settings',
                  style: TextStyle(fontSize: 20),
                ),
                value: 1,)
            ],
            onSelected: (value){
              if(value==1){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SharedRef()));
              }
            },),
        ],
      ),
    );
  }
}

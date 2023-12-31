import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:smartparking/final_page.dart';

// ignore: camel_case_types
class welcome extends StatefulWidget {
  final int _rfid, _slots;
  welcome(this._rfid, this._slots);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  String Name = "";

  String Vno = "";

  String Type = "";

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35),
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (value) {
              Name = value;
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Name'),
          ),
          TextField(
            onChanged: (value) {
              Vno = value;
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Vehicle Number'),
          ),
          TextField(
            onChanged: (value) {
              Type = value;
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'Type'),
          ),
          Container(padding: EdgeInsets.all(10),
              child: Text('Place Your RFID Tag')),
          ElevatedButton(
              onPressed: () async {
                await users.add({
                  'Name': Name,
                  'Vehicle Number': Vno,
                  'Type': Type,
                  'RFID': widget._rfid
                }).then((value) => print('user added'));
                Navigator.push(context, MaterialPageRoute(builder: (context) => final_page(widget._rfid,widget._slots,Vno,Type,Name)),);
              },
              child: Text('Next'))
        ],
      ),
    );
  }
}

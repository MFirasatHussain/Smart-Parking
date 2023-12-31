import 'package:flutter/material.dart';
import 'package:smartparking/Info.dart';
import 'package:smartparking/profile.dart';
import 'package:smartparking/slots.dart';


class final_page extends StatefulWidget {
  final int _rfid;
  final int _slots;
  final String _Vno;
  final String _Type, _Name;

  final_page(this._rfid, this._slots,this._Vno,this._Type, this._Name);

  @override
  State<final_page> createState() => _final_pageState();
}

class _final_pageState extends State<final_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Parking'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            profile(),
            info(widget._rfid,widget._Vno,widget._Type,widget._Name),
            slots(widget._slots),
          ],
        ),
      ),
    );
  }
}

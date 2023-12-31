import 'package:flutter/material.dart';

class slots extends StatefulWidget {
  final int _slots;
  slots(this._slots);

  @override
  State<slots> createState() => _slotsState();
}

class _slotsState extends State<slots> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Slots:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(' '+widget._slots.toString(),
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,)),
          ],
        ),
      ),
    );
  }
}

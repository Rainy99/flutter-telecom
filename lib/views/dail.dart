import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Dialpad();
  }
}

class Dialpad extends StatefulWidget {
  _DialpadState createState() => _DialpadState();
}

class _DialpadState extends State<Dialpad> {
  var phoneNumberList = new List<int>();
  var phoneNumber = "0";

  _setPhoneNumber(int value) {
    setState(() {
      phoneNumberList.add(value);
      phoneNumber = value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
          child: Column(
        children: <Widget>[
          Text(phoneNumber),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: FlatButton(
                          child: Text("1"), onPressed: _setPhoneNumber(1))),
                  Expanded(
                      child: FlatButton(
                          child: Text("2"), onPressed: _setPhoneNumber(2))),
                  Expanded(
                      child: FlatButton(
                          child: Text("3"), onPressed: _setPhoneNumber(3)))
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: FlatButton(
                          child: Text("4"), onPressed: _setPhoneNumber(4))),
                  Expanded(
                      child: FlatButton(
                          child: Text("5"), onPressed: _setPhoneNumber(5))),
                  Expanded(
                      child: FlatButton(
                          child: Text("6"), onPressed: _setPhoneNumber(6)))
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: FlatButton(
                          child: Text("7"), onPressed: _setPhoneNumber(7))),
                  Expanded(
                      child: FlatButton(
                          child: Text("8"), onPressed: _setPhoneNumber(8))),
                  Expanded(
                      child: FlatButton(
                          child: Text("9"), onPressed: _setPhoneNumber(9)))
                ],
              )
            ],
          ),
          FloatingActionButton(
            child: Icon(Icons.call),
          )
        ],
      )),
    );
  }
}

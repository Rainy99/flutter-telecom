import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class History extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _HistoryItem(),
          _HistoryItem(),
          _HistoryItem(),
          _HistoryItem(),
          _HistoryItem()
        ],
      ),
    );
  }
}

class _HistoryItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
        child: Center(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                      child:Icon(Icons.person_pin)
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Text("13508880000",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.call_received),
                            Icon(Icons.sim_card),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child:  Text("上海市",style: TextStyle(color: Colors.grey))
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child:  Text("8小时前",style: TextStyle(color: Colors.grey))
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(children: <Widget>[
                Container(
                    padding: EdgeInsets.only(left: 100),
                    child:Icon(Icons.call)
                )
              ],)
            ],
          ),
        )
      );
  }
}
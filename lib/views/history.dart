import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/Contact.dart';

class History extends StatelessWidget{

  final testData = new TestData();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 20,
        itemBuilder: (BuildContext context,int index) =>
            _HistoryItem(testData.getTestData(),index));
  }
}

class _HistoryItem extends StatelessWidget{

  final List<Contact> data;
  final int index;

  _HistoryItem(this.data,this.index);

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
                      child:Icon(Icons.person,color: Colors.lightBlue,size: 35)
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Text(data[index].phone.toString(),
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.call_received,color: Colors.blue,size: 15),
                            Icon(Icons.sim_card,color: Colors.black54,size: 15),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child:  Text(data[index].city,
                                  style: TextStyle(color: Colors.grey))
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child:  Text("8小时前",
                                  style: TextStyle(color: Colors.grey))
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
                    padding: EdgeInsets.only(left: 45),
                    child:Icon(Icons.call,color: Colors.blueGrey)
                )
              ],)
            ],
          ),
        )
      );
  }
}
import 'package:flutter/material.dart';

class DateTileRow extends StatelessWidget {
  String day;
  String month;
  String get date => '$day' + '\n$month';
  Widget child;
  DateTileRow({this.day, this.month, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              //borderRadius: BorderRadius.circular(20.0),
              child: Column(children: [
                Text(
                  date,
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0),
                ),
              ]),
              padding: EdgeInsets.fromLTRB(10, 5, 13, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(width: 10.0,),
            child
          ]),
    );
  }
}

class DateTile extends StatelessWidget {
  String day;
  String month;
  String get date => '$day' + '\n$month';
  Widget child;
  DateTile({this.day, this.month, this.child});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0)
            ],
            color: Colors.white),
        child: Material(
          child: InkWell(
            onTap: () {
              print('Not set yet');
            },
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 20.0),
              child: Row(
                  children: <Widget>[
                    Container(
                      //borderRadius: BorderRadius.circular(20.0),
                      child: Text(
                        date,
                        textScaleFactor: 1.5,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                      ),
                      padding: EdgeInsets.fromLTRB(10, 5, 13, 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    child
                  ]),
            ),
          ),
        ),
    );
  }
}

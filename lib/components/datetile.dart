import 'package:flutter/material.dart';

class DateTile extends StatelessWidget {
  String day;
  String month;
  String get date => '$day' + '\n$month';
  Widget child;
  DateTile({this.day, this.month, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            child
          ]),
    );
  }
}

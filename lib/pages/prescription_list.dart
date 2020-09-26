import 'package:codebrew2020patient/components/appbar.dart';
import 'package:codebrew2020patient/components/datetile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PrescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: customAppBar('Prescriptions'),
        body: StaggeredGridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            children: <Widget>[
              _prescriptionTile(
                  PrescriptionWidget('19', 'Sept', 'Amanda Wang')),
              _prescriptionTile(
                  PrescriptionWidget('25', 'Sept', 'Vinesh Balan'))
            ],
            staggeredTiles: [
              StaggeredTile.extent(2, 110.0),
              StaggeredTile.extent(2, 110.0),
            ]));
  }

  Widget _prescriptionTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        child: InkWell(
            // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null
                ? () => onTap()
                : () {
                    print('Not set yet');
                  },
            child: child));
  }
}

class PrescriptionWidget extends StatelessWidget {
  String day;
  String month;
  String doctorName;
  String get date => '$day' + '\n$month';
  String get doctor => 'Doctor: ' + '$doctorName';
  PrescriptionWidget(this.day, this.month, this.doctorName);

  @override
  Widget build(BuildContext context) {
    return
            DateTileRow(
              day: day,
              month: month,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(doctor,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0)),
                  Text('Diagnosis: Diabetes',
                      style: TextStyle(color: Colors.black, fontSize: 16.0)),
                  Text('View prescription',
                      style: TextStyle(color: Colors.grey, fontSize: 14.0))
                ],
              ),
            );
  }
}


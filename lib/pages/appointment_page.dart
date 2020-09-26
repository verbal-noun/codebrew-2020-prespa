import 'package:codebrew2020patient/components/appbar.dart';
import 'package:codebrew2020patient/components/datetile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppointmentPage extends StatefulWidget {
  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  List<AppointmentTile> _appointments = List();

  _getAppointments() {
    List<AppointmentTile> appointments = List.from(_appointments);
    appointments.add(AppointmentTile(
        '13',
        'Sept',
        'Amanda Wang',
        "Saint John's Hospital",
        'Post Surgery Checkup',
        'https://www.google.com'));
    appointments.add(AppointmentTile(
        '29',
        'Sept',
        'Joseph Eskbos',
        "Auburn General Practice",
        'Flu Shot',
        'https://www.google.com'));
    setState(() {
      _appointments = appointments;
    });
  }

  @override
  void initState() {
    _getAppointments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.deepPurple,
          title: Text('Appointments'),
        ),
        body: Center(
            child: Container(
                margin: EdgeInsets.all(20.0),
                child: ListView(
                  children: [
                    ..._appointments,
                    Container(
                        padding: EdgeInsets.only(left: 20.0, top: 15.0),
                        child: Text(
                          'You have no more appointments',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w700),
                        ))
                  ],
                ))));
  }
}

class AppointmentTile extends StatelessWidget {
  String day;
  String month;
  String doctorName;
  String hospital;
  String appointmentName;
  String urlLink;

  AppointmentTile(this.day, this.month, this.doctorName, this.hospital,
      this.appointmentName, this.urlLink);

  @override
  Widget build(BuildContext context) {
    return DateTile(
      day: day, month: month,
      // child: SizedBox()
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(appointmentName,
              style: TextStyle(color: Colors.black, fontSize: 20.0)),
          Text(hospital, style: TextStyle(color: Colors.black, fontSize: 15.0)),
          Text('Doctor ' + doctorName,
              style: TextStyle(color: Colors.black, fontSize: 15.0)),
        ],
      ),
    );
  }
}

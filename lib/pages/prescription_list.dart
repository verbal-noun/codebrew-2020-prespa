import 'package:flutter/material.dart';

class PrescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: IconButton
              (
              color: Colors.black,
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back, color: Colors.black),
            ),
            title:
            Text('Prescriptions', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        ),
      body: Column(

      ),
    );
  }
  
}
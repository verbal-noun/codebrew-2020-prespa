import 'package:flutter/material.dart';

AppBar customAppBar(title) => AppBar(
      iconTheme: IconThemeData(
        color: Colors.grey,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 30.0, color: Colors.black),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );

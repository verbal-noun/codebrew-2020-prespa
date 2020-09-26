import 'package:flutter/material.dart';

AppBar customAppBar(title) => AppBar(
  elevation: 0.0,
  backgroundColor: Colors.transparent,
  iconTheme: IconThemeData(color: Colors.black),
  title: Text(title,
      style:
      TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
);

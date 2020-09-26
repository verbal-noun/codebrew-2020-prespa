import 'package:flutter/material.dart';
import 'pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
      title: 'Dashboard',
      theme: ThemeData(primarySwatch: Colors.pink, scaffoldBackgroundColor: Colors.white, fontFamily: 'Montserrat'),
      home: MainPage(),
    );
  }
}
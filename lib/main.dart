import 'package:codebrew2020patient/pages/login_page.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(primarySwatch: Colors.pink, scaffoldBackgroundColor: Colors.white, fontFamily: 'Montserrat'),
      home: LoginScreen(),
    );
  }
}
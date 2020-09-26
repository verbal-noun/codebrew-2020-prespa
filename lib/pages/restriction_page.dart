import 'package:codebrew2020patient/components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RestrictionPage extends StatefulWidget {
  @override
  _RestrictionPageState createState() => _RestrictionPageState();
}

class _RestrictionPageState extends State<RestrictionPage> {
  List<Restriction> _restrictions = List();
  _getRestrictions() {
    List<Restriction> restrictions = List.from(_restrictions);
    restrictions
        .add(Restriction("", "Avoid rigorous exercise (running, cycling etc...)", "xsafdgcsf"));
    restrictions.add(Restriction("Hexadine",
        "Do not eat grapefruit 2 hours after ingestion", "xsafdgcsf"));
    restrictions.add(Restriction("Panadol",
        "Do not go to sleep immediately after ingestion", "xsafdgcsf"));
    setState(() {
      _restrictions = restrictions;
    });
  }

  @override
  void initState() {
    _getRestrictions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.redAccent,
          title: Text('Restrictions'),
        ),
        body: Center(
            child: Container(
          margin: EdgeInsets.only(top: 20.0),
          child: ListView(
            children: _restrictions,
          ),
        )));
  }
}

class Restriction extends StatelessWidget {
  final String medicine;
  final String restriction;
  final String diagnosis;

  Restriction(this.medicine, this.restriction, this.diagnosis);

  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0)
            ],
            color: Colors.white),
        margin:
            EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30.0, right: 20.0),
        child: Material(
            child: InkWell(
                // Do onTap() if it isn't null, otherwise do print()
                onTap: () {
                  print('Not set yet');
                },
                child: Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, bottom: 30.0, left: 30.0, right: 15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(restriction, style: TextStyle(fontSize: 22)),
                          if (medicine != '')
                            SizedBox(
                              height: 5.0,
                            ),
                          if (medicine != '')
                            Text(
                              medicine,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                        ])))),
      ),
      medicine == ''
          ? Positioned(
              left: 10.0,
              child: Image(
                image: AssetImage('res/images/bird-pink.png'),
                width: 60.0,
              ))
          : Positioned(
              left: -10.0,
              child: Image(
                image: AssetImage('res/images/pill-bottle-yellow.png'),
                width: 80.0,
              )),
    ]);
  }
}

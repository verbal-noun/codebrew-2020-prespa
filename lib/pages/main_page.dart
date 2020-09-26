import 'package:codebrew2020patient/pages/appointment_page.dart';
import 'package:codebrew2020patient/pages/faq.dart';
import 'package:codebrew2020patient/pages/restriction_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'shop_items_page.dart';
import 'prescription_list.dart';
import 'medications_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const double CARD_TITLE_SIZE = 20.0;
  static final List<String> chartDropdownItems = [
    'Last 7 days',
    'Last month',
    'Last year'
  ];
  String actualDropdown = chartDropdownItems[0];
  int actualChart = 0;
  static const IconData list =
      IconData(0xe896, fontFamily: 'MaterialIcons', matchTextDirection: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: AppBar(
              elevation: 2.0,
              backgroundColor: Colors.pinkAccent,
              title: Text('Hello, Kaif',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 30.0)),
              actions: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Material(
                          color: Colors.grey,
                          shape: CircleBorder(),
                          child: Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.person,
                                    color: Colors.white, size: 30.0),
                              ))),
                    ],
                  ),
                )
              ],
            )),
        body: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: <Widget>[
            _buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Prescriptions',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: CARD_TITLE_SIZE)),
                          Text('View my prescriptions',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 16.0))
                        ],
                      ),
                      Material(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(24.0),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.description,
                                color: Colors.white, size: 30.0),
                          )))
                    ]),
              ),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => PrescriptionPage())),
            ),
            _buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Material(
                          color: Colors.teal,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.add_circle_outline,
                                color: Colors.white, size: 30.0),
                          )),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('Medication',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: CARD_TITLE_SIZE)),
                      Text('Active medications',
                          style: TextStyle(color: Colors.teal)),
                    ]),
              ),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MedicationPage())),
            ),
            _buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Material(
                          color: Colors.redAccent,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.not_interested,
                                color: Colors.white, size: 30.0),
                          )),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('Restrictions',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: CARD_TITLE_SIZE)),
                      Text('Things not to do',
                          style: TextStyle(color: Colors.redAccent)),
                    ]),
              ),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => RestrictionPage())),
            ),
            _buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Material(
                          color: Colors.amber,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.info,
                                color: Colors.white, size: 30.0),
                          )),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('FAQ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: CARD_TITLE_SIZE)),
                      Text('All ', style: TextStyle(color: Colors.amber)),
                    ]),
              ),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => FAQPage())),
            ),
            _buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Follow-up\nAppointments',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: CARD_TITLE_SIZE)),
                          Text('View calendar',
                              style: TextStyle(color: Colors.purpleAccent)),
                        ],
                      ),
                      Material(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(24.0),
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.calendar_today,
                                color: Colors.white, size: 30.0),
                          )))
                    ]),
              ),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => AppointmentPage())),
            )
          ],
          staggeredTiles: [
            StaggeredTile.extent(2, 110.0),
            StaggeredTile.extent(2, 180.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(2, 114.0),
          ],
        ));
  }

  Widget _buildTile(Widget child, {Function() onTap}) {
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

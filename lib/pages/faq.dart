import 'package:codebrew2020patient/components/appbar.dart';
import 'package:flutter/material.dart';

class FAQPage extends StatefulWidget {
  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  List<FAQTile> _faqs = List();
  _getFAQ() {
    List<FAQTile> faqs = List.from(_faqs);
    faqs.add(FAQTile('Can I visit my friends?', 'No, you risk spreading the disease to the community around you'));
    faqs.add(FAQTile('Can I visit my friends?', 'No, you risk spreading the disease to the community around you'));
    setState(() {
      _faqs = faqs;
    });
  }

  @override
  void initState() {
    _getFAQ();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('FAQ'),
      body: Container(
        child: ListView(children: _faqs,),
      ),
    );
  }
}

class FAQTile extends StatelessWidget {
  final String question, answer;

  FAQTile(this.question, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0)
          ],
          color: Colors.white),
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30.0, right: 20.0),
      child: Material(
          child: InkWell(
              // Do onTap() if it isn't null, otherwise do print()
              onTap: () {
                print('Not set yet');
              },
              child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(question, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        Container(margin: EdgeInsets.only(top: 10.0, left: 10.0),child: Text(answer))
                      ])))),
    );
  }
}

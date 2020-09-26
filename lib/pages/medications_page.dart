import 'package:flutter/material.dart';
import 'lesson.dart';
import 'medication_detail.dart';

class MedicationPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // elevation: 0.0,
      // backgroundColor: Colors.transparent,
      //     leading: IconButton(
      //     color: Colors.black,
      //     onPressed: () => Navigator.of(context).pop(),
      // icon: Icon(Icons.arrow_back, color: Colors.black),
      // ),
      // title: Text('Prescriptions',
      //     style:
      //     TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
      // ),
      body: new ListPage(
        title: "Medications",
      ),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  @override
  void initState() {
    lessons = getMedicineName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Lesson lesson) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Icon(Icons.add_circle_outline, color: Colors.white),
          ),
          title: Text(
            lesson.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          subtitle: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    // tag: 'hero',
                    child: LinearProgressIndicator(
                        backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                        value: lesson.indicatorValue,
                        valueColor: AlwaysStoppedAnimation(Colors.green)),
                  )),
              Expanded(
                flex: 4,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(lesson.level,
                        style: TextStyle(color: Colors.white))),
              )
            ],
          ),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(lesson: lesson)));
          },
        );

    Card makeCard(Lesson lesson) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: makeListTile(lesson),
          ),
        );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );

    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Colors.teal,
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(
      //backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      backgroundColor: Colors.transparent,
      appBar: topAppBar,
      body: makeBody,
    );
  }
}

List getMedicineName() {
  return [
    Lesson(
        title: "Azilect",
        level: "Dr. Wang",
        indicatorValue: 0.33,
        price: 20,
        content:
            "Azilect (rasagiline) works by increasing the levels of certain chemicals in the brain. "
            "Azilect is used to treat symptoms of Parkinson's disease"
            "(stiffness, tremors, spasms, poor muscle control). "
            "Azilect is sometimes used with another medicine called levodopa."),
    Lesson(
        title: "Aderall",
        level: "Dr. Wang",
        indicatorValue: 0.33,
        price: 50,
        content:
        "Azilect (rasagiline) works by increasing the levels of certain chemicals in the brain. "
            "Azilect is used to treat symptoms of Parkinson's disease"
            "(stiffness, tremors, spasms, poor muscle control). "
            "Azilect is sometimes used with another medicine called levodopa."),

        Lesson(
        title: "MiraLAX",
        level: "Dr. Balan",
        indicatorValue: 0.66,
        price: 30,
        content: "MiraLAX (polyethylene glycol 3350) is a laxative solution that increases the amount "
            "of water in the intestinal tract to stimulate bowel movements."
            "MiraLAX is used as a laxative to treat occasional constipation or irregular bowel movements."
            "MiraLAX may also be used for purposes not listed in this medication guide."),

        Lesson(
        title: "Senna",
        level: "Dr. Wang",
        indicatorValue: 0.66,
        price: 30,
        content: "Senna is a natural medicine containing sennosides that are derived from the leaves "
            "of the senna plant. Sennosides irritate the lining of the bowel causing a laxative effect."
            "Senna has been used in alternative medicine as a laxative and an aid to treat constipation."
            "Not all uses for senna have been approved by the FDA. It should not be used in place of medication prescribed for you by your doctor."
            "Senna is often sold as an herbal supplement. There are no regulated manufacturing standards i"
            "n place for many herbal compounds and some marketed supplements have been found "
            "to be contaminated with toxic metals or other drugs. Herbal/health supplements "
            "should be purchased from a reliable source to minimize the risk of contamination."),

      ];
}

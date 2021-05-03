import 'package:flutter/material.dart';
import 'package:pro_learning/widgets/unitcard.dart';

class SubjectDetails extends StatelessWidget {
  final String subject;
  final String img;
  final String sName;
  SubjectDetails({Key key, this.subject, this.img, this.sName})
      : super(key: key);
  final List<String> labSubjects = [
    'Software Engineering',
    'Computer Network',
    'Web Technology',
  ];
  @override
  Widget build(BuildContext context) {
    final mdq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('$subject'),
        centerTitle: true,
        // backgroundColor:
        //     MyColors.myColors[Random().nextInt(MyColors.myColors.length)],
      ),
      body: SafeArea(
        child: Container(
          height: mdq.height,
          decoration: mdq.width > 800
              ? BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(img), fit: BoxFit.fitWidth),
                )
              : null,
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Wrap(
              children: [
                UnitCard(
                  unit: 1,
                  sub: subject,
                  sName: sName,
                ),
                UnitCard(
                  unit: 2,
                  sub: subject,
                  sName: sName,
                ),
                UnitCard(
                  unit: 3,
                  sub: subject,
                  sName: sName,
                ),
                UnitCard(
                  unit: 4,
                  sub: subject,
                  sName: sName,
                ),
                UnitCard(
                  unit: 5,
                  sub: subject,
                  sName: sName,
                ),
                //Unit 0 means lab
                if (labSubjects.contains(subject))
                  UnitCard(
                    unit: 0,
                    sub: subject,
                    sName: sName,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pro_learning/pages/topic_details.dart';
import 'package:pro_learning/utils/networking.dart';
import 'package:pro_learning/values/strings.dart';

class UnitDetails extends StatelessWidget {
  final String sub;
  final String sName;
  final int unit;

  const UnitDetails({Key key, this.sub, this.unit, this.sName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit $unit'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: Networking.fetchSubjects(
              url: Strings.getSubjectTopics(unit: unit, sub: sName)),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData &&
                snapshot.connectionState == ConnectionState.done) {
              // print(snapshot.data);
              return ListView.builder(
                itemCount: snapshot.data.length - 1,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.all(6),
                    elevation: 1.5,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(8),
                      leading: CircleAvatar(
                        radius: 18,
                        child: Text(
                          snapshot.data[index + 1][0]
                              .toUpperCase()
                              .substring(0, 1),
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      title: Text(snapshot.data[index + 1][0]),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => switchBuilder(
                                snapshot.data[index + 1], snapshot, index),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator.adaptive(),
            );
          },
        ),
      ),
    );
  }

  Widget switchBuilder(List items, AsyncSnapshot<dynamic> snapshot, int index) {
    switch (items.length) {
      case 1:
        return TopicDetails(
          unit: unit,
          topic: snapshot.data[index + 1][0],
        );
      case 2:
        return TopicDetails(
          unit: unit,
          topic: snapshot.data[index + 1][0],
          img: snapshot.data[index + 1][1],
        );
      case 3:
        return TopicDetails(
          unit: unit,
          topic: snapshot.data[index + 1][0],
          img: snapshot.data[index + 1][1],
          body: snapshot.data[index + 1][2],
        );
      case 4:
        return TopicDetails(
          unit: unit,
          topic: snapshot.data[index + 1][0],
          img: snapshot.data[index + 1][1],
          body: snapshot.data[index + 1][2],
          res1: snapshot.data[index + 1][3],
        );
      case 5:
        return TopicDetails(
          unit: unit,
          topic: snapshot.data[index + 1][0],
          img: snapshot.data[index + 1][1],
          body: snapshot.data[index + 1][2],
          res1: snapshot.data[index + 1][3],
          res2: snapshot.data[index + 1][4],
        );
      case 6:
        return TopicDetails(
          unit: unit,
          topic: snapshot.data[index + 1][0],
          img: snapshot.data[index + 1][1],
          body: snapshot.data[index + 1][2],
          res1: snapshot.data[index + 1][3],
          res2: snapshot.data[index + 1][4],
          res3: snapshot.data[index + 1][5],
        );
      case 7:
        return TopicDetails(
          unit: unit,
          topic: snapshot.data[index + 1][0],
          img: snapshot.data[index + 1][1],
          body: snapshot.data[index + 1][2],
          res1: snapshot.data[index + 1][3],
          res2: snapshot.data[index + 1][4],
          res3: snapshot.data[index + 1][5],
          author: snapshot.data[index + 1][6],
        );
      default:
        return TopicDetails(
          unit: unit,
          topic: snapshot.data[index + 1][0],
        );
    }
  }
}

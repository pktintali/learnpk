import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_learning/utils/networking.dart';
import 'package:pro_learning/values/strings.dart';
import 'package:pro_learning/values/time_table_brain.dart';
import 'package:url_launcher/link.dart';

class TimeTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currently Running'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: Networking.fetchSubjects(url: Strings.teachersData),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData &&
                  snapshot.connectionState == ConnectionState.done) {
                print(snapshot.data);
                return Center(
                  child: Column(
                    children: [
                      Text(
                        TimeTableBrain.getCurrentlyRunning(snapshot)[1],
                        style: GoogleFonts.almendra(fontSize: 30),
                      ),
                      SizedBox(height: 10),
                      Text(TimeTableBrain.getCurrentlyRunning(snapshot)[2]),
                      SizedBox(height: 10),
                      if (TimeTableBrain.getCurrentlyRunning(snapshot)[3] !=
                          '0')
                        Link(
                          uri: Uri.parse(
                              TimeTableBrain.getCurrentlyRunning(snapshot)[3]),
                          target: LinkTarget.blank,
                          builder: (context, followLink) {
                            return OutlinedButton(
                              onPressed: followLink,
                              child: Text('JOIN'),
                            );
                          },
                        ),
                    ],
                  ),
                );
              }
              return Center(
                child: CircularProgressIndicator.adaptive(),
              );
            },
          ),
        ),
      ),
    );
  }
}

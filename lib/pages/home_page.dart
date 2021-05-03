import 'package:flutter/material.dart';
import 'package:pro_learning/pages/subject_details.dart';
import 'package:pro_learning/pages/time_table.dart';
import 'package:pro_learning/utils/networking.dart';
import 'package:pro_learning/values/strings.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mdq = MediaQuery.of(context).size;
    
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: Networking.fetchSubjects(url: Strings.subjectSheetURL),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData &&
                  snapshot.connectionState == ConnectionState.done) {
                // print(snapshot.data);
                return GridView.builder(
                  itemCount: snapshot.data.length - 1,
                  semanticChildCount: null,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: mdq.width > 800 ? 6 : 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 3,
                      child: InkWell(
                        hoverColor: Colors.purple.withOpacity(0.3),
                        onLongPress: () {
                          if (snapshot.data[index + 1][1] == 'BD') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TimeTable(),
                              ),
                            );
                          }
                        },
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => SubjectDetails(
                                subject: snapshot.data[index + 1][2],
                                sName: snapshot.data[index + 1][1],
                                img: snapshot.data[index + 1][3],
                              ),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: mdq.width / 2 - 10,
                              height: mdq.width > 800 ? 130 : 80,
                              child: Ink.image(
                                image: NetworkImage(
                                  snapshot.data[index + 1][3],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              snapshot.data[index + 1][1],
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              snapshot.data[index + 1][2],
                              style: GoogleFonts.andada(color: Colors.teal),
                            )
                          ],
                        ),
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
      ),
    );
  }
}

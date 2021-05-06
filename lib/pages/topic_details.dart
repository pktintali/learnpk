import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_learning/pages/infinite_widgets.dart';
import 'package:pro_learning/providers/settings.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';

class TopicDetails extends StatelessWidget {
  final String sub;
  final int unit;
  final String topic;
  final String body;
  final String img;
  final String res1;
  final String res2;
  final String res3;
  final String author;

  const TopicDetails({
    Key key,
    this.sub,
    this.unit,
    this.topic,
    this.body,
    this.img,
    this.res1,
    this.res2,
    this.res3,
    this.author,
  }) : super(key: key);

  List<Widget> getChildren(String type, Settings sData) {
    switch (type) {
      case 'Theme':
        return [
          TextButton(
            onPressed: () {
              sData.setDarkTheme();
            },
            child: Text('Dark'),
          ),
          TextButton(
            onPressed: () {
              sData.setLightTheme();
            },
            child: Text('Light'),
          ),
        ];
        break;
      case 'Font Style':
        return [
          TextButton(
            onPressed: () {
              sData.setFontStyle(TextStyle());
            },
            child: Text('Normal'),
          ),
          TextButton(
            onPressed: () {
              sData.setFontStyle(GoogleFonts.atma());
            },
            child: Text('Atma'),
          ),
          TextButton(
            onPressed: () {
              sData.setFontStyle(GoogleFonts.almendra());
            },
            child: Text('Almendra'),
          ),
          TextButton(
            onPressed: () {
              sData.setFontStyle(GoogleFonts.delius());
            },
            child: Text('Delius'),
          ),
          TextButton(
            onPressed: () {
              sData.setFontStyle(GoogleFonts.sevillana());
            },
            child: Text('Sevillana'),
          ),
        ];
        break;
      case 'Font Size':
        return [
          TextButton(
            onPressed: () {
              sData.setFontSize(15);
            },
            child: Text('Small'),
          ),
          TextButton(
            onPressed: () {
              sData.setFontSize(21);
            },
            child: Text('Medium'),
          ),
          TextButton(
            onPressed: () {
              sData.setFontSize(24);
            },
            child: Text('Large'),
          ),
          TextButton(
            onPressed: () {
              sData.setFontSize(28);
            },
            child: Text('X-Large'),
          ),
        ];
        break;
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final mdq = MediaQuery.of(context).size;
    return Consumer<Settings>(
      builder: (context, data, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text(unit != 0 ? 'Unit $unit' : 'Lab'),
            centerTitle: true,
            actions: [
              PopupMenuButton<String>(
                onSelected: (v) {},
                itemBuilder: (context) {
                  return {'Theme', 'Font Style', 'Font Size'}
                      .map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: ExpansionTile(
                          title: Text(choice),
                          children: getChildren(choice, data)),
                    );
                  }).toList();
                },
              ),
            ],
          ),
          body: Scrollbar(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      topic,
                      style: GoogleFonts.rancho(
                        fontSize: mdq.width < 800 ? 25 : 35,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (author != null) Text('Author: $author'),
                        Text('Date: Unknown'),
                      ],
                    ),
                    Divider(),
                    if (img != null && img.length > 0)
                      SizedBox(
                        height: mdq.height / 2 - 50,
                        child: Image.network(
                          img,
                          fit: BoxFit.contain,
                        ),
                      ),
                    SizedBox(height: 10),
                    InfiniteWidgets(data: body),
                    // data.widgets.isNotEmpty
                    //     ? InfiniteWidgets(data: body)
                    //     : CircularProgressIndicator.adaptive(),
                    Divider(),
                    if (res1 != null) Text('Resources:'),
                    if (res1 != null && res1.length > 0)
                      Link(
                        uri: Uri.parse(res1),
                        target: LinkTarget.self,
                        builder: (context, link) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: link,
                                child: Text('Reference Link 1')),
                          );
                        },
                      ),
                    if (res2 != null && res2.length > 0)
                      Link(
                        uri: Uri.parse(res2),
                        target: LinkTarget.self,
                        builder: (context, link) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: link,
                                child: Text('Reference Link 2')),
                          );
                        },
                      ),
                    if (res3 != null && res3.length > 0)
                      Link(
                        uri: Uri.parse(res3),
                        target: LinkTarget.self,
                        builder: (context, link) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: link,
                                child: Text('Reference Link 3')),
                          );
                        },
                      )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

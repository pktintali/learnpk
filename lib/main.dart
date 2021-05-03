import 'package:flutter/material.dart';
import 'package:pro_learning/pages/home_page.dart';
import 'package:pro_learning/providers/settings.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Settings()),
        ],
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Settings>(
      builder: (context, data, _) => MaterialApp(
        darkTheme: ThemeData.dark().copyWith(),
        themeMode: data.isDark ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

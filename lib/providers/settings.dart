import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_learning/utils/parser.dart';

class Settings with ChangeNotifier {
  bool isDark = false;
  TextStyle fontStyle = GoogleFonts.atma();
  double fontSize = 16;
  List<String> elements = [];
  List<Widget> widgets = [];
  Parser p = new Parser();
  bool fontView = false;
  void setDarkTheme() {
    isDark = true;
    notifyListeners();
  }

  void setLightTheme() {
    isDark = false;
    notifyListeners();
  }

  void generateWidgets(String data) {
    elements = p.getElements(str: data);
    for (var i in elements) {
      widgets.add(p.parseElement(element: i.trimRight().trimLeft()));
    }
    notifyListeners();
  }

  void setFontStyle(TextStyle style) {
    fontStyle = style;
    notifyListeners();
  }

  void setFontSize(double size) {
    fontSize = size;
    notifyListeners();
  }

  void toogleFontView() {
    fontView = !fontView;
    notifyListeners();
  }
}

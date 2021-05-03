import 'package:flutter/material.dart';
import 'package:pro_learning/utils/parser.dart';

class InfiniteWidgets extends StatelessWidget {
  final String data;
  InfiniteWidgets({Key key, this.data}) : super(key: key);
  final Parser p = new Parser();
  @override
  Widget build(BuildContext context) {
    List<String> elements = p.getElements(str: data);
    List<Widget> widgets = [];
    widgets.clear();
    for (var i in elements) {
      widgets.add(
          p.parseElement(element: i.trimRight().trimLeft(), context: context));
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }
}

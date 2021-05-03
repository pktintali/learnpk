import 'package:flutter/material.dart';
import 'package:pro_learning/utils/html_widgets.dart';

class Parser extends HTMLWidgets {
  List<String> getElements({@required String str}) {
    print(str);
    final String t = str;
    t.replaceAll("\r", "");
    return t.split('#>');
  }

  Widget parseElement({@required String element, BuildContext context}) {
    print(element.substring(0, 3));
    switch (element.substring(0, 3)) {
      case 'h1.':
        return h1(element.substring(3), context);
        break;
      case 'h2.':
        return h2(element.substring(3), context);
        break;
      case 'h3.':
        return h3(element.substring(3), context);
        break;
      case 'h4.':
        return h4(element.substring(3), context);
        break;
      case 'h5.':
        return h5(element.substring(3), context);
        break;
      case 'p0.':
        return p(element.substring(3), context);
        break;
      case 'cb.':
        return bpBox(element.substring(3), context);
        break;
      case 'ob.':
        return bpDot(element.substring(3), context);
        break;
      case 'im.':
        return img(element.substring(3));
        break;
      case 'hr.':
        return hr();
        break;
      case 's0.':
        return spaceBox();
        break;
      case 't0.':
        return t0(element.substring(3), context);
        break;
      case 'tx.':
        return tx(element.substring(3), context);
        break;
      default:
        return h1('Default Element', context);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:pro_learning/providers/settings.dart';
import 'package:provider/provider.dart';

class HTMLWidgets {
  Color getColor(String data) {
    if (data.contains('.#red')) {
      return Colors.red;
    } else if (data.contains('.#green')) {
      return Colors.green;
    } else if (data.contains('.#blue')) {
      return Colors.blue;
    } else if (data.contains('.#yellow')) {
      return Colors.yellow;
    } else if (data.contains('.#purple')) {
      return Colors.purple;
    } else {
      return null;
    }
  }

  Color getBgCol(String data) {
    if (data.contains('b.red')) {
      return Colors.red;
    } else if (data.contains('b.green')) {
      return Colors.green;
    } else if (data.contains('b.blue')) {
      return Colors.blue;
    } else if (data.contains('b.yellow')) {
      return Colors.yellow;
    } else if (data.contains('b.purple')) {
      return Colors.purple;
    } else {
      return null;
    }
  }

  Widget h1(String data, BuildContext context) {
    return Consumer<Settings>(
      builder: (context, setting, _) {
        return Text(
          data.contains('.#') ? data.substring(0, data.indexOf('.#')) : data,
          style: setting.fontStyle.copyWith(
            fontSize: 23 + setting.fontSize / 4,
            fontWeight: FontWeight.w600,
            color: getColor(data),
            backgroundColor: getBgCol(data),
          ),
        );
      },
    );
  }

  Widget h2(String data, BuildContext context) {
    return Consumer<Settings>(
      builder: (context, setting, _) {
        return Text(
          data.contains('.#') ? data.substring(0, data.indexOf('.#')) : data,
          style: setting.fontStyle.copyWith(
            fontSize: 20 + setting.fontSize / 4,
            fontWeight: FontWeight.w600,
            color: getColor(data),
            backgroundColor: getBgCol(data),
          ),
        );
      },
    );
  }

  Widget h3(String data, BuildContext context) {
    return Consumer<Settings>(
      builder: (context, setting, _) {
        return Text(
          data.contains('.#') ? data.substring(0, data.indexOf('.#')) : data,
          style: setting.fontStyle.copyWith(
            fontSize: 17 + setting.fontSize / 4,
            fontWeight: FontWeight.w600,
            color: getColor(data),
            backgroundColor: getBgCol(data),
          ),
        );
      },
    );
  }

  Widget h4(String data, BuildContext context) {
    return Consumer<Settings>(
      builder: (context, setting, _) {
        return Text(
          data.contains('.#') ? data.substring(0, data.indexOf('.#')) : data,
          style: setting.fontStyle.copyWith(
            fontSize: 14 + setting.fontSize / 4,
            fontWeight: FontWeight.w600,
            color: getColor(data),
            backgroundColor: getBgCol(data),
          ),
        );
      },
    );
  }

  Widget h5(String data, BuildContext context) {
    return Consumer<Settings>(
      builder: (context, setting, _) {
        return Text(
          data.contains('.#') ? data.substring(0, data.indexOf('.#')) : data,
          style: setting.fontStyle.copyWith(
            fontSize: 12 + setting.fontSize / 4,
            fontWeight: FontWeight.w600,
            color: getColor(data),
            backgroundColor: getBgCol(data),
          ),
        );
      },
    );
  }

  Widget p(String data, BuildContext context) {
    return Consumer<Settings>(
      builder: (context, setting, _) {
        return Text(
          data.contains('.#') ? data.substring(0, data.indexOf('.#')) : data,
          style: setting.fontStyle.copyWith(
            color: getColor(data),
            fontSize: setting.fontSize,
            backgroundColor: getBgCol(data),
          ),
        );
      },
    );
  }

  Widget bpBox(String data, BuildContext context) {
    return Consumer<Settings>(builder: (context, setting, _) {
      return Row(
        children: [
          Icon(
            Icons.check_box,
            size: 15,
            color: Colors.green,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                data.contains('.#')
                    ? data.substring(0, data.indexOf('.#'))
                    : data,
                style: setting.fontStyle.copyWith(
                  color: getColor(data),
                  fontSize: setting.fontSize,
                  backgroundColor: getBgCol(data),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget bpDot(String data, BuildContext context) {
    return Consumer<Settings>(builder: (context, setting, _) {
      return Row(
        children: [
          Icon(Icons.circle, size: 7),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                data.contains('.#')
                    ? data.substring(0, data.indexOf('.#'))
                    : data,
                style: setting.fontStyle.copyWith(
                  color: getColor(data),
                  fontSize: setting.fontSize,
                  backgroundColor: getBgCol(data),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget img(String url) {
    return Image.network(url);
  }

  Widget hr() {
    return Divider();
  }

  Widget t0(String data, BuildContext context) {
    final ab = data.split('|');
    return DecoratedBox(
      decoration: BoxDecoration(border: Border.all()),
      child: Consumer<Settings>(builder: (context, setting, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                ab[0].contains('.#')
                    ? data.substring(0, data.indexOf('.#'))
                    : ab[0],
                style: setting.fontStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  color: getColor(data),
                  fontSize: setting.fontSize,
                  backgroundColor: getBgCol(data),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                ab[1].contains('.#')
                    ? data.substring(0, data.indexOf('.#'))
                    : ab[1],
                style: setting.fontStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  color: getColor(data),
                  fontSize: setting.fontSize,
                  backgroundColor: getBgCol(data),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget tx(String data, BuildContext context) {
    final ab = data.split('|');
    return Consumer<Settings>(builder: (context, setting, _) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
                '⦿ ${ab[0].contains('.#') ? data.substring(0, data.indexOf('.#')) : ab[0]}',
                style: setting.fontStyle.copyWith(
                  color: getColor(data),
                  fontSize: setting.fontSize,
                  backgroundColor: getBgCol(data),
                )),
          ),
          Flexible(
            child: Text(
              '⦿ ${ab[0].contains('.#') ? data.substring(0, data.indexOf('.#')) : ab[0]}',
              style: setting.fontStyle.copyWith(
                color: getColor(data),
                fontSize: setting.fontSize,
                backgroundColor: getBgCol(data),
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget spaceBox() {
    return SizedBox(height: 10);
  }
}

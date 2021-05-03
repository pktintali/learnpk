import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_learning/pages/unit_details1.dart';
import 'package:pro_learning/values/colors.dart';

class UnitCard extends StatelessWidget {
  final int unit;
  final String sub;
  final String sName;

  const UnitCard({Key key, this.unit, this.sub, this.sName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _r = Random().nextInt(MyColors.myColors.length);
    final mdq = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: mdq.height / 4,
        width: mdq.width < 800 ? mdq.width / 2 - 16 : mdq.width / 4 - 20,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              MyColors.myColors[_r],
            ),
          ),
          child: Text(
            unit != 0 ? 'Unit $unit' : 'Lab',
            style: GoogleFonts.balooTammudu(
              fontSize: 22,
            ),
          ),
          onPressed: () {
            
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => UnitDetails(
                  sub: sub,
                  unit: unit,
                  sName: sName,
                ),
              ),
            );
            
          },
        ),
      ),
    );
  }
}

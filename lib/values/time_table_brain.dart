import 'package:flutter/material.dart';

class TimeTableBrain {
  static List<dynamic> getCurrentlyRunning(AsyncSnapshot<dynamic> snapshot) {
    switch (DateTime.now().weekday) {
      case 1:
        {
          if ((DateTime.now().hour == 9 && DateTime.now().minute >= 15) ||
              (DateTime.now().hour == 10 && DateTime.now().minute < 10)) {
            return snapshot.data[7];
          }
          if ((DateTime.now().hour > 10 && DateTime.now().hour < 13) ||
              (DateTime.now().hour == 10 && DateTime.now().minute >= 10) ||
              (DateTime.now().hour == 13 && DateTime.now().minute < 30)) {
            return snapshot.data[8];
          }
          if ((DateTime.now().hour == 13 && DateTime.now().minute >= 30) ||
              (DateTime.now().hour == 14 && DateTime.now().minute < 10)) {
            return snapshot.data[9];
          }
          if ((DateTime.now().hour == 14 && DateTime.now().minute >= 10)) {
            return snapshot.data[5];
          }
          if ((DateTime.now().hour == 15 && DateTime.now().minute < 50)) {
            return snapshot.data[2];
          }
          if ((DateTime.now().hour == 15 && DateTime.now().minute >= 50) ||
              (DateTime.now().hour == 16 && DateTime.now().minute < 40)) {
            return snapshot.data[6];
          } else {
            return snapshot.data[10];
          }
        }
        break;
      case 2:
        {
          if ((DateTime.now().hour == 9 && DateTime.now().minute >= 15) ||
              (DateTime.now().hour == 10 && DateTime.now().minute < 10)) {
            return snapshot.data[7];
          }
          if ((DateTime.now().hour == 10 && DateTime.now().minute > 10)) {
            return snapshot.data[3];
          }
          if ((DateTime.now().hour == 11 && DateTime.now().minute <= 50)) {
            return snapshot.data[1];
          }
          if ((DateTime.now().hour == 11 && DateTime.now().minute > 50) ||
              (DateTime.now().hour == 12 && DateTime.now().minute <= 40)) {
            return snapshot.data[2];
          }
          if ((DateTime.now().hour == 12 && DateTime.now().minute > 40) ||
              (DateTime.now().hour == 13 && DateTime.now().minute <= 30)) {
            return snapshot.data[4];
          }
          if ((DateTime.now().hour == 13 && DateTime.now().minute >= 30) ||
              (DateTime.now().hour == 14 && DateTime.now().minute < 10)) {
            return snapshot.data[9];
          }
          if ((DateTime.now().hour == 14 && DateTime.now().minute >= 10)) {
            return snapshot.data[5];
          }
          if ((DateTime.now().hour == 15) ||
              (DateTime.now().hour == 16 && DateTime.now().minute <= 40)) {
            return snapshot.data[2];
          } else {
            return snapshot.data[10];
          }
        }
        break;
      case 3:
        {
          if ((DateTime.now().hour == 9 && DateTime.now().minute >= 15) ||
              (DateTime.now().hour == 10 && DateTime.now().minute < 10)) {
            return snapshot.data[7];
          }
          if ((DateTime.now().hour > 10 && DateTime.now().hour < 13) ||
              (DateTime.now().hour == 10 && DateTime.now().minute >= 10) ||
              (DateTime.now().hour == 13 && DateTime.now().minute < 30)) {
            return snapshot.data[8];
          }
          if ((DateTime.now().hour == 13 && DateTime.now().minute >= 30) ||
              (DateTime.now().hour == 14 && DateTime.now().minute < 10)) {
            return snapshot.data[9];
          }
          if ((DateTime.now().hour == 14 && DateTime.now().minute >= 10)) {
            return snapshot.data[5];
          }
          if ((DateTime.now().hour == 15) ||
              (DateTime.now().hour == 16 && DateTime.now().minute <= 40)) {
            return snapshot.data[1];
          } else {
            return snapshot.data[10];
          }
        }
        break;
      case 4:
        {
          if ((DateTime.now().hour == 9 && DateTime.now().minute >= 15) ||
              (DateTime.now().hour == 10 && DateTime.now().minute < 10)) {
            return snapshot.data[7];
          }
          if ((DateTime.now().hour == 10 && DateTime.now().minute > 10)) {
            return snapshot.data[3];
          }

          if ((DateTime.now().hour == 11 && DateTime.now().minute <= 50)) {
            return snapshot.data[4];
          }
          if ((DateTime.now().hour == 11 && DateTime.now().minute > 50) ||
              (DateTime.now().hour == 12) ||
              ((DateTime.now().hour == 13 && DateTime.now().minute <= 30))) {
            return snapshot.data[4];
          }

          if ((DateTime.now().hour == 13 && DateTime.now().minute >= 30) ||
              (DateTime.now().hour == 14 && DateTime.now().minute < 10)) {
            return snapshot.data[9];
          }
          if ((DateTime.now().hour == 14 && DateTime.now().minute >= 10)) {
            return snapshot.data[1];
          }
          if ((DateTime.now().hour == 15 && DateTime.now().minute < 50)) {
            return snapshot.data[3];
          }
          if ((DateTime.now().hour == 15 && DateTime.now().minute >= 50) ||
              (DateTime.now().hour == 16 && DateTime.now().minute < 40)) {
            return snapshot.data[6];
          } else {
            return snapshot.data[10];
          }
        }
        break;
      case 5:
        {
          if ((DateTime.now().hour == 9 && DateTime.now().minute >= 15) ||
              (DateTime.now().hour == 10 && DateTime.now().minute < 10)) {
            return snapshot.data[7];
          }
          if ((DateTime.now().hour > 10 && DateTime.now().hour < 13) ||
              (DateTime.now().hour == 10 && DateTime.now().minute >= 10) ||
              (DateTime.now().hour == 13 && DateTime.now().minute < 30)) {
            return snapshot.data[8];
          }
          if ((DateTime.now().hour == 13 && DateTime.now().minute >= 30) ||
              (DateTime.now().hour == 14 && DateTime.now().minute < 10)) {
            return snapshot.data[9];
          }
          if ((DateTime.now().hour == 14 && DateTime.now().minute >= 10)) {
            return snapshot.data[2];
          }
          if ((DateTime.now().hour == 15 && DateTime.now().minute < 50)) {
            return snapshot.data[4];
          }
          if ((DateTime.now().hour == 15 && DateTime.now().minute >= 50) ||
              (DateTime.now().hour == 16 && DateTime.now().minute < 40)) {
            return snapshot.data[1];
          } else {
            return snapshot.data[10];
          }
        }
        break;
      default:
        return snapshot.data[10];
    }
  }
}

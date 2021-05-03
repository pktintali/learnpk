class Strings {
  static const subjectSheetURL =
      'https://sheets.googleapis.com/v4/spreadsheets/1KsMfIEpX5ZVTDZlbjDzJtbS5ILw0CmuiEF_gAqYDtao/values/sheet1?key=AIzaSyBHa8gIZFiDDGmSUKiDPBn6I-aDt6e0IHc';
  static String getSubjectTopics({String sub, int unit}) {
      return 'https://sheets.googleapis.com/v4/spreadsheets/1KsMfIEpX5ZVTDZlbjDzJtbS5ILw0CmuiEF_gAqYDtao/values/$sub-$unit?key=AIzaSyBHa8gIZFiDDGmSUKiDPBn6I-aDt6e0IHc';
  }
  static const String teachersData = 'https://sheets.googleapis.com/v4/spreadsheets/1KsMfIEpX5ZVTDZlbjDzJtbS5ILw0CmuiEF_gAqYDtao/values/tt?key=AIzaSyBHa8gIZFiDDGmSUKiDPBn6I-aDt6e0IHc';
}

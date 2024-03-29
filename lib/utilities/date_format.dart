import 'package:intl/intl.dart';

class FormatDate {
  static String time(String date) {
    DateTime parseDate = DateFormat("yyyy-MM-dd HH:mm:ss").parse(date);
    DateTime inputDate = DateTime.parse(parseDate.toString());
    String outputDate = DateFormat("HH:mm a'").format(inputDate);
    return outputDate;
  }

  static String ddMMMyyyy(String date) {
    DateTime parseDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(date);
    DateTime inputDate = DateTime.parse(parseDate.toString());
    String outputDate = DateFormat('dd MMM yyyy').format(inputDate);
    return outputDate;
  }

  String mMMDD(DateTime? date) {
    if (date == null) return "";
    String outputDate = DateFormat('MMM dd').format(date);
    return outputDate;
  }

  String getFormatedDateNew(String date) {
    DateTime parseDate = DateFormat("yyyy-MM-dd HH:mm:ss").parse(date);
    DateTime inputDate = DateTime.parse(parseDate.toString());
    String outputDate = DateFormat('dd MMM yy').format(inputDate);
    return outputDate;
  }

  String getFormatedMonthYear(String date) {
    DateTime parseDate = DateFormat("yyyy-MM-dd HH:mm:ss").parse(date);
    DateTime inputDate = DateTime.parse(parseDate.toString());
    String outputDate = DateFormat('MMM yyyy').format(inputDate);
    return outputDate;
  }

  String getFormatedDateTime(String date) {
    DateTime parseDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
        .parse(date)
        .add(const Duration(hours: 5, minutes: 30));
    DateTime inputDate = DateTime.parse(parseDate.toString());
    String outputDate = DateFormat('dd-MM-yyyy - hh:mm a').format(inputDate);
    return outputDate;
  }
}

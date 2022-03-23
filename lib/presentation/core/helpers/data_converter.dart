import 'package:intl/intl.dart';

/// [Readme](https://fr.wikipedia.org/wiki/Date#Pays_utilisant_le_format_jj/mm/aaaa)
class DataConverter {
  /// Use in [normal country]
  static String dateToDDMMYYYY(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  /// Use in [United-States]
  static String dateToMMDDYYYY(DateTime date) {
    return DateFormat('MM-dd-yyyy').format(date);
  }

  /// Use in [almost normal country]
  static String dateToYYYYMMDD(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  /// Use in [Canada]
  static String dateToYYYYMMMDD(DateTime date) {
    return DateFormat('yyyy-MMM-dd').format(date);
  }

  /// Use in [almost normal country]
  static String dateToYYYYMMDDHHSS(DateTime date) {
    return DateFormat('yyyy-MM-dd HH:ss').format(date);
  }
}

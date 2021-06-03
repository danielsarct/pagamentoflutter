import 'package:intl/intl.dart';

class StringUtils {
  static const String LOCALE = 'pt-br';
  static String formatToMoney(double value) {
    return 'R\$' + value.toStringAsFixed(2);
  }

  static formatDateTime(DateTime date) {
    return DateFormat('dd/MM/yyyy', LOCALE).format(date);
  }
}

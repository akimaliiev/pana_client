import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {
  String get toDMH => DateFormat('d MMMM HH:mm', 'en_EN').format(this);
}

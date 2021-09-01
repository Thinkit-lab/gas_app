import 'package:intl/intl.dart';

const TEXT_COLOR_PRIMARY = 0xFF95989D;
const TEXT_COLOR_SECONDARY = 0xFF8A8A8F;
const COLOR_BACKGROUND = 0xFF23272F;
const COLOR_HEADER = 0xFF2C313B;
extension MyDateTimeExtension on DateTime {
  /// Custom made extension to format Date from ISO string to dd/MM/yy
  String formatDate({String pattern = "dd/MM/yy"}) {
    return "${DateFormat(pattern).format(this)}";
  }
}
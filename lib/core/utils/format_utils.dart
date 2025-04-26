import 'package:intl/intl.dart';

String priceFormat(num price) {
  if (price >= 1000) {
    return NumberFormat('#,##0.#').format((price));
  } else {
    return NumberFormat('###.#').format((price));
  }
}

String getFirstName(String fullName) {
  if (fullName.trim().isEmpty) return '';

  List<String> parts = fullName.trim().split(' ');
  return parts.isNotEmpty ? parts.first : '';
}

String getInitialLetters(String fullName) {
  if (fullName.trim().isEmpty) return '';

  List<String> parts = fullName.trim().split(RegExp(r'\s+'));
  return parts.map((word) => word[0].toUpperCase()).join();
}

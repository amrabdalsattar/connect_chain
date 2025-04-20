import 'package:intl/intl.dart';

String priceFormat(num price) {
  if (price >= 1000) {
    return NumberFormat('#,##0.#').format((price));
  } else {
    return NumberFormat('###.#').format((price));
  }
}

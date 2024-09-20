import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class AmountTextInputFormatter extends TextInputFormatter {
  final NumberFormat _currencyFormatter;
  AmountTextInputFormatter({String locale = 'en_US'}) : _currencyFormatter = NumberFormat.currency(locale: locale, symbol: '') {
    // You can customize the NumberFormat as needed
  }

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove any non-numeric characters from the input
    final numericString = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    // Convert the numeric string to a number
    final double value = double.tryParse(numericString) ?? 0.0;

    // Format the number as currency
    final formattedValue = _currencyFormatter.format(value / 100);

    // Return the new value with the formatted currency
    return newValue.copyWith(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: formattedValue.length),
    );
  }
}

import 'package:flutter/services.dart';

class CardInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    // Remove any non-digit characters
    final digitsOnly = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    // Format the input as 1111 1111 1111 1111
    final formatted = _formatCardNumber(digitsOnly);

    // Return the new value with the formatted card number
    return newValue.copyWith(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }

  String _formatCardNumber(String number) {
    final buffer = StringBuffer();
    for (int i = 0; i < number.length; i++) {
      if (i > 0 && i % 4 == 0) {
        buffer.write(' ');
      }
      buffer.write(number[i]);
    }
    return buffer.toString();
  }
}

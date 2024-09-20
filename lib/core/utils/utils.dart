import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../data_source/data_source_model/network_response/network_response.dart';
import '../errors/exceptions.dart';

extension DateTimeConverter on DateTime? {
  String convertToString() {
    if (this == null) return '';
    return DateFormat('dd/MM/yyyy').format(this!);
  }

  String formateDateToYYYYMMddHHmmss() {
    if (this == null) return '';
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(this!);
  }

  String formateDateToDDMMYYYY() {
    if (this == null) return '';
    return DateFormat('dd/MM/yyyy').format(this!);
  }

  String formateDateToyyyyMMdd() {
    if (this == null) return '';
    return DateFormat('yyyy-MM-dd').format(this!);
  }

  String formateDateToddmmyyyyEEEE() {
    if (this == null) return '';
    return DateFormat('dd/MM/yyyy (EEEE)').format(this!);
  }

  DateTime getStartDateOfTheWeek({startDay = 7}) {
    DateTime tempStartDay = this!;
    while (tempStartDay.weekday != startDay) {
      tempStartDay = tempStartDay.subtract(const Duration(days: 1));
    }
    return tempStartDay;
  }

  DateTime getEndDateOfTheWeek({endDay = 6}) {
    DateTime tempEndDay = this!;
    while (tempEndDay.weekday != endDay) {
      tempEndDay = tempEndDay.add(const Duration(days: 1));
    }
    return tempEndDay;
  }

  String formateDateToDDMMYYYYHHMMAMPM() {
    if (this == null) return '';
    return DateFormat('dd/MM/yyyy hh:mm a').format(this!);
  }

  String formatTimeToHHMMAMPM() {
    if (this == null) return '';
    return DateFormat('hh:mm a').format(this!);
  }
}

DateTime convertTimeofDayToDateTime(TimeOfDay time, DateTime dateTime) {
  return DateTime(dateTime.year, dateTime.month, dateTime.day, time.hour, time.minute);
}

String formatTimeToHHMMAMPM(String timeString) {
  DateTime time = DateFormat('HH:mm:ss').parse(timeString);
  // Formatting the time in 12-hour format with AM/PM indicator
  return DateFormat('hh:mm a').format(time);
}

String formatDateTo12hrs(String inputDate) {
  String formattedInputDate = inputDate.substring(0, inputDate.length - 3);
  DateTime dateTime = DateTime.parse(formattedInputDate);
  return DateFormat('dd/MM/yyyy hh:mm a').format(dateTime);
}

String formatDateTimeTo12hrs(String inputDate) {
  DateTime dateTime = DateTime.parse(inputDate);
  return DateFormat('dd/MM/yyyy hh:mm a').format(dateTime);
}

TimeOfDay convertTimeStringToTimeOfDay(String timeString) {
  // Parse the time string
  DateTime time = DateFormat('HH:mm:ss').parse(timeString);

  // Create a TimeOfDay object
  return TimeOfDay.fromDateTime(time);
}

String timeOfDayToString(TimeOfDay timeOfDay) {
  // Get current date
  DateTime now = DateTime.now();

  // Combine TimeOfDay with current date to get a DateTime
  DateTime dateTime = DateTime(now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);

  // Format DateTime as "HH:mm:ss"
  String formattedTime = '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:00';

  return formattedTime;
}

String formatTimeOfDay(TimeOfDay timeOfDay) {
  // Format the TimeOfDay object to "hh:mm" format
  return '${timeOfDay.hour}:${timeOfDay.minute.toString().padLeft(2, '0')}';
}

String calculateTimeDifference(String startTimeString, String endTimeString) {
  DateTime startTime = DateFormat('HH:mm:ss').parse(startTimeString);
  DateTime endTime = DateFormat('HH:mm:ss').parse(endTimeString);

  Duration difference = endTime.difference(startTime);

  int hours = difference.inHours;
  int minutes = difference.inMinutes.remainder(60);

  String formattedDifference = '';

  if (hours > 0) {
    formattedDifference += '$hours hr ';
  }
  if (minutes > 0) {
    formattedDifference += '$minutes mins';
  }

  return formattedDifference;
}

DateTime convertToDateTime(String dateString, String timeString) {
  // Split the date string into year, month, and day parts
  List<String> dateParts = dateString.split('-');
  int year = int.parse(dateParts[0]);
  int month = int.parse(dateParts[1]);
  int day = int.parse(dateParts[2]);

  // Split the time string into hour, minute, and second parts
  List<String> timeParts = timeString.split(':');
  int hour = int.parse(timeParts[0]);
  int minute = int.parse(timeParts[1]);
  int second = int.parse(timeParts[2]);

  // Create a DateTime object using the parsed values
  return DateTime(year, month, day, hour, minute, second);
}

String getStartDateUAT({int dayToSubtract = 2}) {
  DateTime currentDate = DateTime.now();
  DateTime dateTime = DateTime(currentDate.year, currentDate.month, currentDate.day);
  DateTime daysBefore = dateTime.subtract(Duration(days: dayToSubtract));
  return daysBefore.formateDateToYYYYMMddHHmmss();
}

String getEndDateUAT() {
  DateTime currentDate = DateTime.now();
  DateTime dateTime = DateTime(currentDate.year, currentDate.month, currentDate.day, currentDate.hour, currentDate.minute, currentDate.second);
  return dateTime.formateDateToYYYYMMddHHmmss();
}

extension StringExtension on String? {
  bool isNumeric() {
    if (this == null) {
      return false;
    }
    return double.tryParse(this!) != null;
  }

  String? capitalize() => this == null ? null : "${this![0].toUpperCase()}${this!.substring(1)}";
  bool isNullOrEmpty() => this == null || this!.isEmpty;
  bool isNotNullOrEmpty() => this != null && this!.isNotEmpty;
}

extension IntExtension on int {
  int convertToFourDigitYear() {
    int currentYear = DateTime.now().year;
    int currentCentury = currentYear ~/ 100;
    int threshold = currentYear % 100;
    int centuryGuess = this <= threshold ? currentCentury : currentCentury - 1;
    int fullYear = (centuryGuess * 100) + this;
    return fullYear;
  }
}

Color hexToColor(String code) {
  if (code.startsWith('#')) {
    code = code.substring(1);
  }
  return Color(int.parse('FF$code', radix: 16));
}

List<String> splitStringWithParentheses(String inputString) {
  List<String> parts = inputString.split("(");
  String firstPart = parts[0].trim(); // Application
  String secondPart = "(${parts[1]}"; // (INC)
  return [firstPart, secondPart];
}

class NRICFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final String oldText = oldValue.text;
    final int oldTextLength = oldText.length;
    final String newText = newValue.text;
    final int newTextLength = newText.length;
    final StringBuffer buffer = StringBuffer();
    String lastChar = '';
    if (newText.isNotEmpty) {
      lastChar = newText.substring(newText.length - 1);
    }

    /// ========================================================================
    int? textSelection;
    if (lastChar.isNumeric()) {
      if (newTextLength > oldTextLength && newTextLength == 12) {
        buffer.clear();
        buffer.write(newText.substring(0, 6));
        buffer.write('-');
        buffer.write(newText.substring(6, 8));
        buffer.write('-');
        buffer.write(newText.substring(8, 12));
        textSelection = buffer.toString().length;
      } else if (newTextLength < oldTextLength && oldTextLength == 14 && newTextLength <= 13) {
        List<String> split = newText.split('-');
        if (newText.contains('-') && newText.split('-').length == 3) {
          buffer.write(newText.replaceAll('-', ''));
          if (split[0].length < 6) {
            textSelection = newValue.selection.baseOffset;
          } else if (split[1].length < 2) {
            textSelection = newValue.selection.baseOffset - 1;
          } else {
            textSelection = newValue.selection.baseOffset - 2;
          }
        } else {
          buffer.write(oldText);
          textSelection = oldValue.selection.baseOffset;
        }
      } else {
        buffer.write(newText);
        textSelection = newValue.selection.baseOffset;
      }
    } else {
      if (newText.isEmpty) {
        buffer.write(newText);
      } else {
        buffer.write(oldText);
      }
    }
    return newValue.copyWith(
      text: buffer.toString(),
      // selection: TextSelection.fromPosition(TextPosition(offset: buffer.toString().length)),
      selection: TextSelection.fromPosition(TextPosition(offset: textSelection ?? buffer.toString().length)),
    );
  }
}

NetworkResponse showErrorConnectionDialog(ex) {
  /// call this bloc to show error connection dialog
  if (ex is DioException) {
    if (ex.type == DioExceptionType.connectionError || ex.type == DioExceptionType.connectionTimeout) {
      // HomeBloc homeBloc = GetIt.instance.get<HomeBloc>();
      // homeBloc.add(const HomeEvent.onConnectionError());
      return const NetworkResponse.connectionError('', -1);
    }
  }
  throw const APIException(
    message: 'Something went wrong, please try again later',
    statusCode: 505,
  );
}

bool isPhone() {
  final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
  return data.size.shortestSide < 550;
}

Future<bool?> showLoadingDialog({
  required BuildContext context,
  required Widget child,
  bool dismissible = true,
  Alignment alignment = Alignment.bottomCenter,
  Duration? dismissDuration, // Duration to auto-dismiss the dialog
}) async {
  return await showGeneralDialog<bool>(
    barrierLabel: "Loading",
    barrierColor: Colors.black.withOpacity(0.1),
    barrierDismissible: dismissible,
    transitionDuration: const Duration(milliseconds: 250),
    context: context,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: alignment,
            child: child,
          ),
        ],
      );
    },
  );
}

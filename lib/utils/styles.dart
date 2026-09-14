import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:web_dashboard/utils/colors.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
  elevation: WidgetStateProperty.all(0),
  backgroundColor: WidgetStateProperty.all(Colors.white),
  shape: WidgetStateProperty.all(
    RoundedRectangleBorder(
      side: BorderSide(color: AppColors.primary),
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);

Widget entryWidget(Widget widget) {
  return Entry(
    opacity: 0.1,
    duration: const Duration(milliseconds: 500),
    yOffset: 100,
    curve: Curves.easeIn,
    child: widget,
  );
}

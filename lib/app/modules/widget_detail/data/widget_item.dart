import 'package:flutter/material.dart';

class WidgetItem {
  final String title;
  final String description;
  final Widget previewWidget;

  WidgetItem(
      {required this.title,
      required this.description,
      required this.previewWidget});
}

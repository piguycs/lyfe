import 'package:flutter/material.dart';

class AppTheme {
  ThemeData light() {
    return ThemeData(useMaterial3: true);
  }

  ThemeData dark() {
    return ThemeData.dark(useMaterial3: true);
  }
}

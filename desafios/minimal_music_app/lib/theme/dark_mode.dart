import 'package:flutter/material.dart';

/// Cria um thema no modo claro
ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    // background is deprecated
    surface: Colors.grey.shade900,
    primary: Colors.grey.shade600,
    secondary: Colors.grey.shade800,
    inversePrimary: Colors.grey.shade300,
  ),
);

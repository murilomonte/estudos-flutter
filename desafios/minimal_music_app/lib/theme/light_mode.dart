import 'package:flutter/material.dart';

/// Cria um thema no modo claro
ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    // background is deprecated
    surface: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade200,
    inversePrimary: Colors.grey.shade900,
  ),
);

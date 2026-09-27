import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF1B3A2D);
  static const Color primaryLight = Color(0xFF2D6A4F);
  static const Color green = Color(0xFF2D8C55);
  static const Color pink = Color(0xFFE84C7A);
  static const Color cardGreen = Color(0xFFE8F5ED);
  static const Color cardPink = Color(0xFFFDE8EF);
  static const Color tabBackground = Color(0xFFD4E8DA);
  static const Color textPrimary = Color(0xFF1A2B22);
  static const Color textSecondary = Color(0xFF7A8C84);
  static const Color textHint = Color(0xFFADBFB7);

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFFFDE8EF),
      Color(0xFFF8F8F8),
      Color(0xFFE6F0EB),
    ],
    stops: [0.0, 0.45, 1.0],
  );
}
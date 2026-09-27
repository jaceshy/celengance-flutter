import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

class AppLogo extends StatelessWidget {
  final double iconSize;
  final double fontSize;

  const AppLogo({super.key, this.iconSize = 36, this.fontSize = 22});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Dipotong membulat mengikuti ukuran iconSize
        ClipRRect(
          borderRadius: BorderRadius.circular(iconSize / 2),
          child: Image.asset(
            'assets/logo.png', // Pastikan nama & format file sesuai
            width: iconSize,
            height: iconSize,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          'Celengance',
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
            letterSpacing: -0.3,
          ),
        ),
      ],
    );
  }
}
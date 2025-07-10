import 'package:flutter/material.dart';
import 'package:test_app/presentation/theme/app_colors.dart';

class AppStyles {
  static const TextStyle h3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle title = TextStyle(fontSize: 16);

  static ButtonStyle addedButton = ElevatedButton.styleFrom(
    backgroundColor: AppColors.grey,
  );
}

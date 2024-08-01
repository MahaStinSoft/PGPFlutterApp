import 'package:flutter/material.dart';
import 'colors.dart'; // Import the colors.dart file

// Define TextStyles
class AppTextStyles {
  static const TextStyle headerStyle = TextStyle(
    color: AppColors.textDarkColor, // or any other color
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );

  static const TextStyle navbarStyle = TextStyle(
    color: AppColors.primaryColor, // or any other color
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );

  static const TextStyle defaultStyle = TextStyle(
    color: AppColors.textDarkColor,
    fontSize: 14,
    fontFamily: 'Poppins',
  );

  static const TextStyle titleStyle = TextStyle(
    fontSize: 16,
    color: AppColors.textDarkColor,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );

  static const TextStyle textInputStyle = TextStyle(
    fontFamily: 'Poppins',
  );
}

// Define InputDecoration constants
class AppInputDecorations {
  static InputDecoration textFieldDecoration({
    required String hintText,
    Color borderColor = AppColors.hintTextColor,
  }) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: borderColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: borderColor),
      ),
      hintText: hintText,
      hintStyle: AppTextStyles.textInputStyle.copyWith(
        color: borderColor,
        fontWeight: FontWeight.normal,
      ),
      contentPadding: EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 12.0), // Adjust vertical padding to reduce height
    );
  }
}

// Define Button styles
class AppButtonStyles {
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primaryColor,
    padding: const EdgeInsets.symmetric(vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
}

// Define Icon styles
class AppIconStyles {
  static const Color iconColor = AppColors.iconsColor;
}

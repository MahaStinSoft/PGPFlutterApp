import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyles {
  static const TextStyle headerStyle = TextStyle(
    color: AppColors.textDarkColor,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
  );

  static const TextStyle navbarStyle = TextStyle(
    color: AppColors.primaryColor,
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

class AppInputDecorations {
  static InputDecoration textFieldDecoration({
    required String hintText,
    Color fillColor = Colors.white,
    bool isPassword = false,
    bool isConfirmPassword = false,
    Color borderColor = AppColors.hintTextColor,
    Color hintTextColor = Colors.grey,
  }) {
    return InputDecoration(
      filled: true,
      fillColor: fillColor,
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
        color: hintTextColor, // Use hintTextColor here
        fontWeight: FontWeight.normal,
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      suffixIcon: isPassword || isConfirmPassword
          ? IconButton(
              icon: Icon(
                Icons.visibility,
                color: AppColors.hintTextColor,
              ),
              onPressed: () {},
            )
          : null,
    );
  }
}

class AppButtonStyles {
  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primaryColor,
    padding: const EdgeInsets.symmetric(vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
}

class AppIconStyles {
  static const Color iconColor = AppColors.iconsColor;
}

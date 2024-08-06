import 'package:flutter/material.dart';
import 'package:flutterapp/colors.dart';
import 'package:flutterapp/styles.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final String? errorText;
  final bool obscureText;
  final VoidCallback? togglePasswordVisibility;
  final bool showToggleIcon;
  final ValueChanged<String>? onChanged;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    this.errorText,
    this.obscureText = false,
    this.togglePasswordVisibility,
    this.showToggleIcon = false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: AppTextStyles.labelStyle,
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            errorText: errorText,
            hintStyle:
                TextStyle(color: AppColors.hintTextColor), // Custom hint style
            filled: true,
            fillColor: AppColors.textLightColor,
            contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: AppColors.hintTextColor,
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: AppColors.hintTextColor,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: AppColors.hintTextColor,
                width: 2.0,
              ),
            ),
            suffixIcon: showToggleIcon
                ? IconButton(
                    icon: Icon(
                      color: AppColors.hintTextColor,
                      obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: togglePasswordVisibility,
                  )
                : null,
          ),
          style: const TextStyle(fontFamily: 'Poppins'),
          onChanged: onChanged,
        ),
      ],
    );
  }
}

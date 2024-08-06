import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/colors.dart';
import 'package:flutterapp/styles.dart'; // Adjust according to your path
import 'package:flutterapp/generated/l10n.dart';

class GrievancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Ensure status bar settings are applied
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
      statusBarIconBrightness:
          Brightness.dark, // Dark icons for light status bar
    ));

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(S.of(context).myGrievance),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: AppTextStyles.headerStyle,
        toolbarHeight: kToolbarHeight,
        iconTheme: IconThemeData(
          color: AppColors.textDarkColor, // Set icon color to green
          size: 30.0,
        ),
        systemOverlayStyle:
            SystemUiOverlayStyle.dark, // Ensure black status bar content
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.asset(
              'assets/vector.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).noGrievanceToShow,
                  style: AppTextStyles.defaultStyle.copyWith(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: AppColors.hintTextColor,
                  ),
                ),
                SizedBox(height: 10.0), // Space between text and icon
                Icon(
                  Icons.do_not_disturb, // Replace with desired icon
                  color: AppColors.hintTextColor,
                  size: 36.0, // Adjust size as needed
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

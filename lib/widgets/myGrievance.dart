import 'package:flutter/material.dart';
import 'package:flutterapp/colors.dart';
import 'package:flutterapp/styles.dart'; // Adjust according to your path
import 'package:flutterapp/generated/l10n.dart';

class GrievancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: AppBar(
              title: Text(S.of(context).myGrievance),
              backgroundColor: Colors.transparent,
              elevation: 0,
              titleTextStyle: AppTextStyles.headerStyle,
              toolbarHeight: kToolbarHeight,
              iconTheme: IconThemeData(
                color: AppColors.textDarkColor,
                size: 30.0,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                Text(
                  S.of(context).noGrievanceToShow,
                  style: AppTextStyles.defaultStyle.copyWith(
                    fontSize: 20.0,
                    color: AppColors.hintTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

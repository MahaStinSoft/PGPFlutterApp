import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/colors.dart';
import 'package:flutterapp/styles.dart';
import 'package:flutterapp/widgets/GrievanceButton.dart';
import 'package:flutterapp/widgets/GrievanceCounter.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/widgets/grievanceFrom.dart';
import 'package:flutterapp/widgets/myGrievance.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final screenHeight = constraints.maxHeight;

          return Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: screenHeight * 0.45,
                child: Image.asset(
                  'assets/vector.png',
                  fit: BoxFit.fill,
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.1),
                    Center(
                      child: Text(
                        S.of(context).appTitle,
                        style: AppTextStyles.headerStyle,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GrievanceCounter(
                              count: '0',
                              label: S.of(context).submittedGrievance,
                              color: Colors.blue,
                              borderWidth: 1.5,
                              backgroundColor: AppColors.textLightColor,
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.05),
                          Expanded(
                            child: GrievanceCounter(
                              count: '0',
                              label: S.of(context).resolvedGrievance,
                              color: Colors.green,
                              borderWidth: 1.5,
                              backgroundColor: AppColors.textLightColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.028),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                      child: Column(
                        children: [
                          GrievanceButton(
                            icon: Icons.location_city,
                            label: S.of(context).knowYourMunicipality,
                            color: Colors.orange,
                            onPressed: () {
                              // Handle navigation or action here
                            },
                          ),
                          SizedBox(height: screenHeight * 0.0),
                          GrievanceButton(
                            icon: Icons.edit,
                            label: S.of(context).newGrievance,
                            color: Colors.blue,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GrievanceFormScreen(),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: screenHeight * 0.0),
                          GrievanceButton(
                            icon: Icons.storage,
                            label: S.of(context).registeredGrievance,
                            color: Colors.green,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => GrievancePage(),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: screenHeight * 0.0),
                          GrievanceButton(
                            icon: Icons.photo,
                            label: S.of(context).gallery,
                            color: Colors.yellow,
                            onPressed: () {
                              // Handle navigation or action here
                            },
                          ),
                          SizedBox(height: screenHeight * 0.0),
                          GrievanceButton(
                            icon: Icons.video_library,
                            label: S.of(context).videos,
                            color: AppColors.primaryColor,
                            onPressed: () {
                              // Handle navigation or action here
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

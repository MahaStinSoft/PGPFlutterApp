import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/colors.dart';
import 'package:flutterapp/styles.dart';
import 'package:flutterapp/widgets/GrievanceButton.dart';
import 'package:flutterapp/widgets/GrievanceCounter.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/widgets/myGrievance.dart'; // Ensure you import the GrievancePage

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
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Image.asset(
              'assets/vector.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              SizedBox(height: 80.0),
              Center(
                child: Text(
                  S.of(context).appTitle,
                  style: AppTextStyles.headerStyle,
                ),
              ),
              SizedBox(height: 40.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    SizedBox(width: 10),
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
              SizedBox(height: 10.0),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: ListView(
                    children: [
                      GrievanceButton(
                        icon: Icons.location_city,
                        label: S.of(context).knowYourMunicipality,
                        color: Colors.orange,
                        onPressed: () {
                          // Handle navigation or action here
                        },
                      ),
                      GrievanceButton(
                        icon: Icons.edit,
                        label: S.of(context).newGrievance,
                        color: Colors.blue,
                        onPressed: () {
                          // Handle navigation or action here
                        },
                      ),
                      GrievanceButton(
                        icon: Icons.storage,
                        label: S.of(context).registeredGrievance,
                        color: Colors.green,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GrievancePage()),
                          );
                        },
                      ),
                      GrievanceButton(
                        icon: Icons.photo,
                        label: S.of(context).gallery,
                        color: Colors.yellow,
                        onPressed: () {
                          // Handle navigation or action here
                        },
                      ),
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/services.dart';
// import 'package:flutterapp/colors.dart';
// import 'package:flutterapp/styles.dart';
// import 'package:flutterapp/widgets/signup.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Set the status bar to translucent
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent, // Set status bar color to transparent
//       statusBarIconBrightness:
//           Brightness.dark, // Adjust the icon brightness if needed
//     ));

//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             height: MediaQuery.of(context).size.height * 0.5,
//             child: Image.asset(
//               'assets/vector.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//           // Logo at the top of the screen
//           Positioned(
//             top: 120,
//             left: 0,
//             right: 0,
//             child: Center(
//               child: Image.asset(
//                 'assets/logo.png',
//                 height: 130,
//                 width: 115,
//               ),
//             ),
//           ),
//           // Login Content
//           Positioned(
//             top: MediaQuery.of(context).size.height * 0.30 +
//                 80 / 2, // Adjusted for logo height and space
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Header Text
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: Text(
//                       "Welcome Back!",
//                       style: AppTextStyles.headerStyle,
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   // Subtitle Text
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: Text(
//                       "Login to share your grievance!",
//                       style: AppTextStyles.defaultStyle.copyWith(
//                         color: AppColors.iconsColor,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                   // Email Label
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: Text(
//                       "Your Email",
//                       style: AppTextStyles.titleStyle,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   // Email TextField
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: TextField(
//                       decoration: AppInputDecorations.textFieldDecoration(
//                         hintText: "example@gmail.com",
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 15),
//                   // Password Label
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: Text(
//                       "Password",
//                       style: AppTextStyles.titleStyle,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   // Password TextField
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: TextField(
//                       obscureText: true,
//                       decoration: AppInputDecorations.textFieldDecoration(
//                         hintText: "**********",
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 0),
//                   // Forgot Password
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: TextButton(
//                       onPressed: () {
//                         // Forgot password action
//                       },
//                       child: Text(
//                         "Forgot Password?",
//                         style: AppTextStyles.defaultStyle.copyWith(
//                           color: AppButtonStyles
//                               .elevatedButtonStyle.backgroundColor
//                               ?.resolve({}),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 0),
//                   // Login Button
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Login action
//                         },
//                         child: Text(
//                           "Login",
//                           style: AppTextStyles.defaultStyle.copyWith(
//                             color: AppColors.textLightColor,
//                           ),
//                         ),
//                         style: AppButtonStyles.elevatedButtonStyle,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),

//                   // Section 3: Language Selection
//                   Center(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "English",
//                           style: AppTextStyles.defaultStyle.copyWith(
//                             color: AppColors.iconsColor,
//                           ),
//                         ),
//                         const SizedBox(width: 16),
//                         Text(
//                           "|",
//                           style: AppTextStyles.defaultStyle.copyWith(
//                             color: AppColors.iconsColor,
//                           ),
//                         ),
//                         const SizedBox(width: 16),
//                         Text(
//                           "Tamil",
//                           style: AppTextStyles.defaultStyle.copyWith(
//                             color: AppColors.iconsColor,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 50),

//                   // Section 4: Sign Up Link
//                   Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: RichText(
//                         text: TextSpan(
//                           text: "Don’t have an account? ",
//                           style: AppTextStyles.defaultStyle,
//                           children: [
//                             TextSpan(
//                               text: "Sign Up",
//                               style: AppTextStyles.defaultStyle.copyWith(
//                                 color: AppButtonStyles
//                                     .elevatedButtonStyle.backgroundColor
//                                     ?.resolve({}),
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               recognizer: TapGestureRecognizer()
//                                 ..onTap = () {
//                                   // Navigate to SignupPage
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => SignupPage(),
//                                     ),
//                                   );
//                                 },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/colors.dart';
import 'package:flutterapp/styles.dart';
import 'package:flutterapp/widgets/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

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
          Positioned(
            top: 94,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/logo.png',
                height: 130,
                width: 115,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.28 + 60 / 2,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "Welcome Back!",
                      style: AppTextStyles.headerStyle,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "Login to share your grievance!",
                      style: AppTextStyles.defaultStyle.copyWith(
                        color: AppColors.iconsColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "Your Email",
                      style: AppTextStyles.titleStyle,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: TextField(
                      decoration: AppInputDecorations.textFieldDecoration(
                        hintText: "example@gmail.com",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      "Password",
                      style: AppTextStyles.titleStyle,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: TextField(
                      obscureText: true,
                      decoration: AppInputDecorations.textFieldDecoration(
                        hintText: "**********",
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: AppTextStyles.defaultStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppButtonStyles
                                .elevatedButtonStyle.backgroundColor
                                ?.resolve({}),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Login",
                            style: AppTextStyles.defaultStyle.copyWith(
                              color: AppColors.textLightColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: AppButtonStyles.elevatedButtonStyle,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            // Handle English language change
                          },
                          child: Text(
                            "English",
                            style: AppTextStyles.defaultStyle.copyWith(
                              color: AppColors.iconsColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          "|",
                          style: AppTextStyles.defaultStyle.copyWith(
                            color: AppColors.iconsColor,
                          ),
                        ),
                        const SizedBox(width: 16),
                        InkWell(
                          onTap: () {
                            // Handle Tamil language change
                          },
                          child: Text(
                            "தமிழ்",
                            style: AppTextStyles.defaultStyle.copyWith(
                              color: AppColors.iconsColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: RichText(
                        text: TextSpan(
                          text: "Don’t have an account? ",
                          style: AppTextStyles.defaultStyle
                              .copyWith(fontWeight: FontWeight.w600),
                          children: [
                            TextSpan(
                              text: "Sign Up",
                              style: AppTextStyles.defaultStyle.copyWith(
                                color: AppButtonStyles
                                    .elevatedButtonStyle.backgroundColor
                                    ?.resolve({}),
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignupPage(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

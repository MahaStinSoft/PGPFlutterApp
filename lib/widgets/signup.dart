// // import 'package:flutter/material.dart';
// // import 'package:flutter/gestures.dart';
// // import 'package:flutter/services.dart'; // Import this package
// // import 'package:flutterapp/colors.dart';
// // import 'package:flutterapp/styles.dart';

// // class SignupPage extends StatelessWidget {
// //   const SignupPage({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     // Set the status bar to translucent
// //     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
// //       statusBarColor: Colors.transparent, // Set status bar color to transparent
// //       statusBarIconBrightness:
// //           Brightness.dark, // Adjust the icon brightness if needed
// //     ));

// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           // Background Image
// //           Positioned(
// //             top: 0,
// //             left: 0,
// //             right: 0,
// //             height: MediaQuery.of(context).size.height * 0.5,
// //             child: Image.asset(
// //               'assets/vector.png',
// //               fit: BoxFit.cover,
// //             ),
// //           ),
// //           // Signup Content
// //           Positioned(
// //             top: MediaQuery.of(context).size.height * 0.05 + 10 / 2,
// //             left: 0,
// //             right: 0,
// //             bottom: 0,
// //             child: SingleChildScrollView(
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   // Section 1: Header and Logo
// //                   Row(
// //                     children: [
// //                       Expanded(
// //                         child: Padding(
// //                           padding: const EdgeInsets.symmetric(horizontal: 32.0),
// //                           child: Text(
// //                             "Sign up!",
// //                             style: AppTextStyles.headerStyle,
// //                           ),
// //                         ),
// //                       ),
// //                       Padding(
// //                         padding: const EdgeInsets.symmetric(horizontal: 32.0)
// //                             .copyWith(top: 40),
// //                         child: Image.asset(
// //                           'assets/logo.png',
// //                           height: 100,
// //                           width: 100,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                   const SizedBox(height: 30),
// //                   // Section 2: Form Fields
// //                   Padding(
// //                     padding: const EdgeInsets.symmetric(horizontal: 32.0),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         // Name Field
// //                         Text(
// //                           "Your Name",
// //                           style: AppTextStyles.titleStyle,
// //                         ),
// //                         const SizedBox(height: 8),
// //                         TextField(
// //                           decoration: AppInputDecorations.textFieldDecoration(
// //                             hintText: "John Doe",
// //                           ),
// //                         ),
// //                         const SizedBox(height: 20),
// //                         // Mobile No Field
// //                         Text(
// //                           "Mobile No",
// //                           style: AppTextStyles.titleStyle,
// //                         ),
// //                         const SizedBox(height: 8),
// //                         TextField(
// //                           decoration: AppInputDecorations.textFieldDecoration(
// //                             hintText: "+1 234 567 890",
// //                           ),
// //                         ),
// //                         const SizedBox(height: 20),
// //                         // Email Field
// //                         Text(
// //                           "Your Email",
// //                           style: AppTextStyles.titleStyle,
// //                         ),
// //                         const SizedBox(height: 8),
// //                         TextField(
// //                           decoration: AppInputDecorations.textFieldDecoration(
// //                             hintText: "example@gmail.com",
// //                           ),
// //                         ),
// //                         const SizedBox(height: 20),
// //                         // Password Field
// //                         Text(
// //                           "Password",
// //                           style: AppTextStyles.titleStyle,
// //                         ),
// //                         const SizedBox(height: 8),
// //                         TextField(
// //                           obscureText: true,
// //                           decoration: AppInputDecorations.textFieldDecoration(
// //                             hintText: "**********",
// //                           ),
// //                         ),
// //                         const SizedBox(height: 20),
// //                         // Confirm Password Field
// //                         Text(
// //                           "Confirm Password",
// //                           style: AppTextStyles.titleStyle,
// //                         ),
// //                         const SizedBox(height: 8),
// //                         TextField(
// //                           obscureText: true,
// //                           decoration: AppInputDecorations.textFieldDecoration(
// //                             hintText: "**********",
// //                           ),
// //                         ),
// //                         const SizedBox(height: 20),
// //                         // Signup Button
// //                         SizedBox(
// //                           width: double.infinity,
// //                           child: ElevatedButton(
// //                             onPressed: () {
// //                               // Signup action
// //                             },
// //                             child: Text(
// //                               "Sign Up",
// //                               style: AppTextStyles.defaultStyle.copyWith(
// //                                 color: AppColors.textLightColor,
// //                               ),
// //                             ),
// //                             style: AppButtonStyles.elevatedButtonStyle,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                   const SizedBox(height: 30),
// //                   // Section 3: Already have an account
// //                   Align(
// //                     alignment: Alignment.bottomCenter,
// //                     child: Padding(
// //                       padding: const EdgeInsets.all(16.0),
// //                       child: RichText(
// //                         text: TextSpan(
// //                           text: "Already have an account? ",
// //                           style: AppTextStyles.defaultStyle,
// //                           children: [
// //                             TextSpan(
// //                               text: "Login",
// //                               style: AppTextStyles.defaultStyle.copyWith(
// //                                 color: AppButtonStyles
// //                                     .elevatedButtonStyle.backgroundColor
// //                                     ?.resolve({}),
// //                                 fontWeight: FontWeight.bold,
// //                               ),
// //                               recognizer: TapGestureRecognizer()
// //                                 ..onTap = () {
// //                                   // Navigate back to LoginPage
// //                                   Navigator.pop(context);
// //                                 },
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/services.dart';
// import 'package:flutterapp/styles.dart';

// class SignupPage extends StatelessWidget {
//   const SignupPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       statusBarIconBrightness: Brightness.dark,
//     ));

//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             height: MediaQuery.of(context).size.height * 0.45,
//             child: Image.asset(
//               'assets/vector.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//           Column(
//             children: [
//               Container(
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 32.0, vertical: 49.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Sign up!",
//                           style: AppTextStyles.headerStyle,
//                         ),
//                         const SizedBox(height: 40),
//                       ],
//                     ),
//                     Image.asset(
//                       'assets/logo.png',
//                       height: 100,
//                       width: 100,
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: SingleChildScrollView(
//                   padding: const EdgeInsets.symmetric(horizontal: 32.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text("Your Name", style: AppTextStyles.titleStyle),
//                       const SizedBox(height: 8),
//                       TextField(
//                         decoration: AppInputDecorations.textFieldDecoration(
//                             hintText: "John Doe"),
//                       ),
//                       const SizedBox(height: 10),
//                       Text("Mobile No", style: AppTextStyles.titleStyle),
//                       const SizedBox(height: 8),
//                       TextField(
//                         decoration: AppInputDecorations.textFieldDecoration(
//                             hintText: "+1 234 567 890"),
//                       ),
//                       const SizedBox(height: 10),
//                       Text("Your Email", style: AppTextStyles.titleStyle),
//                       const SizedBox(height: 8),
//                       TextField(
//                         decoration: AppInputDecorations.textFieldDecoration(
//                             hintText: "example@gmail.com"),
//                       ),
//                       const SizedBox(height: 10),
//                       Text("Password", style: AppTextStyles.titleStyle),
//                       const SizedBox(height: 8),
//                       TextField(
//                         obscureText: true,
//                         decoration: AppInputDecorations.textFieldDecoration(
//                             hintText: "**********"),
//                       ),
//                       const SizedBox(height: 10),
//                       Text("Confirm Password", style: AppTextStyles.titleStyle),
//                       const SizedBox(height: 8),
//                       TextField(
//                         obscureText: true,
//                         decoration: AppInputDecorations.textFieldDecoration(
//                             hintText: "**********"),
//                       ),
//                       const SizedBox(height: 20),
//                       Container(
//                         margin: const EdgeInsets.symmetric(
//                             horizontal: 10), // Added margin
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             // Signup action
//                           },
//                           child: Text(
//                             "Sign Up",
//                             style: AppTextStyles.defaultStyle.copyWith(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           style: AppButtonStyles.elevatedButtonStyle,
//                         ),
//                       ),
//                       const SizedBox(height: 40),
//                       Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Align(
//                           alignment: Alignment.bottomCenter,
//                           child: RichText(
//                             text: TextSpan(
//                               text: "Already have an account? ",
//                               style: AppTextStyles.defaultStyle
//                                   .copyWith(fontWeight: FontWeight.w600),
//                               children: [
//                                 TextSpan(
//                                   text: "Login",
//                                   style: AppTextStyles.defaultStyle.copyWith(
//                                     color: AppButtonStyles
//                                         .elevatedButtonStyle.backgroundColor
//                                         ?.resolve({}),
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                   recognizer: TapGestureRecognizer()
//                                     ..onTap = () {
//                                       Navigator.pop(context);
//                                     },
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/styles.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
          Column(
            children: [
              Container(
                // padding: const EdgeInsets.symmetric(
                //     horizontal: 32.0, vertical: 49.0),
                padding: const EdgeInsets.fromLTRB(32.0, 79.0, 32.0, 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sign up!",
                          style: AppTextStyles.headerStyle,
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                    Image.asset(
                      'assets/logo.png',
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Name", style: AppTextStyles.titleStyle),
                      const SizedBox(height: 8),
                      TextField(
                        decoration: AppInputDecorations.textFieldDecoration(
                            hintText: "your name"),
                      ),
                      const SizedBox(height: 10),
                      Text("Mobile No", style: AppTextStyles.titleStyle),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 46,
                            child: TextField(
                              decoration:
                                  AppInputDecorations.textFieldDecoration(
                                hintText: "+91",
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              readOnly: true,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              decoration:
                                  AppInputDecorations.textFieldDecoration(
                                hintText: "9000012345",
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text("Your Email", style: AppTextStyles.titleStyle),
                      const SizedBox(height: 8),
                      TextField(
                        decoration: AppInputDecorations.textFieldDecoration(
                            hintText: "example@gmail.com"),
                      ),
                      const SizedBox(height: 10),
                      Text("Password", style: AppTextStyles.titleStyle),
                      const SizedBox(height: 8),
                      TextField(
                        obscureText: true,
                        decoration: AppInputDecorations.textFieldDecoration(
                            hintText: "**********"),
                      ),
                      const SizedBox(height: 10),
                      Text("Confirm Password", style: AppTextStyles.titleStyle),
                      const SizedBox(height: 8),
                      TextField(
                        obscureText: true,
                        decoration: AppInputDecorations.textFieldDecoration(
                            hintText: "**********"),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Signup action
                          },
                          child: Text(
                            "Sign Up",
                            style: AppTextStyles.defaultStyle.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: AppButtonStyles.elevatedButtonStyle,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: RichText(
                            text: TextSpan(
                              text: "Already have an account? ",
                              style: AppTextStyles.defaultStyle
                                  .copyWith(fontWeight: FontWeight.w600),
                              children: [
                                TextSpan(
                                  text: "Login",
                                  style: AppTextStyles.defaultStyle.copyWith(
                                    color: AppButtonStyles
                                        .elevatedButtonStyle.backgroundColor
                                        ?.resolve({}),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pop(context);
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
        ],
      ),
    );
  }
}

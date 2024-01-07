import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reading/features/splash/presentation/views/splashview.dart';

import 'features/onboarding/presentation/views/onboardingview.dart';

void main() async {
  runApp(const Reading());
}

class Reading extends StatelessWidget {
  const Reading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.light().copyWith(textTheme: GoogleFonts.robotoTextTheme()),
      // ignore: prefer_const_constructors
      home: SplashView(),
    );
  }
}

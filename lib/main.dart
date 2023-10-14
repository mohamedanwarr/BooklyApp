import 'package:bookyapp/Core/utils/AppRouter.dart';
import 'package:bookyapp/constant.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      debugShowCheckedModeBanner: false,
      // home: const SplashView(),
    );
  }
}


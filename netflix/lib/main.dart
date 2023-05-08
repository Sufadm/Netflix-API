import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white)),
          scaffoldBackgroundColor: backgroundcolor,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(background: Colors.black)),
      home: const SplashScreen(),
    );
  }
}

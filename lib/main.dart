import 'package:flutter/material.dart';
import 'package:house_rent/screen/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:
            Color(0xFFF5F6F6), // Changed from backgroundColor
        primaryColor: Color(0xFF811B83),
        colorScheme: ColorScheme.light(
          secondary: Color(0xFFFA5019), // Replaces accentColor
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            // Replaces headline1
            color: Color(0xFF100E34),
          ),
          bodyLarge: TextStyle(
            // Replaces bodyText1
            color: Color(0xFF100E34).withOpacity(0.5),
          ),
        ),
      ),
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

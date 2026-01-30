import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/forget_password_verify_email_screen.dart';
import 'package:task_manager_app/ui/screens/forget_password_verify_otp_screen.dart';
import 'package:task_manager_app/ui/screens/main_bottom_nav_screen.dart';
import 'package:task_manager_app/ui/screens/reset_password_screen.dart';
import 'package:task_manager_app/ui/screens/sign_in_screen.dart';
import 'package:task_manager_app/ui/screens/sign_up_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
            fixedSize: const Size.fromWidth(double.maxFinite),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
        inputDecorationTheme: InputDecorationThemeData(
          hintStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      home: MainBottomNavScreen(),
    );
  }
}

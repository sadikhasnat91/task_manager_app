import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_app/ui/widgets/app_logo.dart';
import 'package:task_manager_app/ui/widgets/screen_background.dart';

import 'sign_in_screen.dart';

class SplashScreen extends StatefulWidget {

  static const String routeName = '/splash-screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    moveToNextScreen();
  }

  Future<void> moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offNamed(SignInScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScreenBackground(
          child: Center(
            child: AppLogo(),
          ),
        ),
      ],
    );
  }
}

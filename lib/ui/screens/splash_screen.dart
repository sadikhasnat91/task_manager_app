import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/widgets/app_logo.dart';
import 'package:task_manager_app/ui/widgets/screen_background.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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

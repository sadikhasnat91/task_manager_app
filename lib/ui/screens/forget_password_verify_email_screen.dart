import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/widgets/screen_background.dart';

class ForgetPasswordVerifyEmailScreen extends StatefulWidget {
  const ForgetPasswordVerifyEmailScreen({super.key});

  @override
  State<ForgetPasswordVerifyEmailScreen> createState() => _ForgetPasswordVerifyEmailScreenState();
}

class _ForgetPasswordVerifyEmailScreenState extends State<ForgetPasswordVerifyEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 220),
              Text(
                'Your Email Address',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 4),
              Text(
                'A 6 digit of OTP will be sent to your email',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey),
              ),
              SizedBox(height: 12),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: IconButton(onPressed: () {},
                    icon: Icon(Icons.arrow_circle_right_outlined, color: Colors.white, size: 28)),
              ),
              SizedBox(height: 48),
              SizedBox(height: 12),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Have an account?   ",
                    style: TextStyle(
                      color: Colors.black54, // Add color here
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                          color: Colors.green, // Add color here
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/widgets/screen_background.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                'Get Started With',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: IconButton(onPressed: () {},
                    icon: Icon(Icons.arrow_circle_right_outlined, color: Colors.white, size: 28)),
              ),
              SizedBox(height: 48),
              Center(
                child: TextButton(onPressed: () {},
                    child: const Text('Forget Password?'),),
              ),
              SizedBox(height: 12),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account?   ",
                    style: TextStyle(
                      color: Colors.black, // Add color here
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'Register',
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

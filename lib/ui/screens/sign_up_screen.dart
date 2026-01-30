import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/widgets/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 220),
                Text(
                  'Join with us',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 4),
                Text(
                  'Minimum length password 8 characters with letters and numbers contribution',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                SizedBox(height: 24),
                TextFormField(
                  decoration: InputDecoration(hintText: 'First Name'),
                ),
                SizedBox(height: 24),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Last Name'),
                ),
                SizedBox(height: 24),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Mobile'),
                ),
                SizedBox(height: 24),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                SizedBox(height: 16),
                ElevatedButton(onPressed: () {}, child: Text("Confirm")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

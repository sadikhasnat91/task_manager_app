import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:task_manager_app/ui/controller/sign_in_controller.dart';
import 'package:task_manager_app/ui/screens/main_bottom_nav_screen.dart';
import 'package:task_manager_app/ui/widgets/screen_background.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = '/sign-in-screen';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {


  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final SignInController _signInController = Get.find<SignInController>(); // We have made signInController in controller section and binds in controller_binder class and now import in SingInScreen.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
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
                  controller: _emailTEController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Enter email ';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordTEController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  obscureText: true,
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return 'Enter email ';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async{
                    if (_formKey.currentState!.validate()) {
                      final bool isSuccess = await _signInController.signIn(_emailTEController.text, _passwordTEController.text.trim());
                      if (!isSuccess) {
                        Get.snackbar('Notification', 'Invalid email/password',
                        duration: const Duration(seconds: 2),
                        );
                      } else {
                        Get.offNamed(MainBottomNavScreen.routeName);
                      }
                    }
                  },
                  child: Icon(Icons.arrow_circle_right_outlined, color: Colors.white, size: 28),
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
      ),
    );
  }
}

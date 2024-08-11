import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/home/home_screen.dart';
import 'package:myapp/utils/circles.dart';
import 'package:myapp/utils/custom_button.dart';
import 'package:myapp/utils/custom_textbox.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Circles(),
          Center(
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/svg/auth2.svg',
                  width: 400,
                  height: 255,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Register',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 280,
                        child: CustomTextBox(
                          hinttxt: 'Enter phone number',
                          validat: 'Please enter your phone number',
                          inputType: TextInputType.name,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 280,
                        child: CustomTextBox(
                          hinttxt: 'Enter password',
                          validat: 'Please enter your password',
                          inputType: TextInputType.name,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Continue',
                  color: Colors.black,
                  tap: () {
                    
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const HomeScreen()));
                   
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

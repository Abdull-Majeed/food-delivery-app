import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/auth_services/auth_service.dart';
import 'package:food_delivery/auth_services/toast_msg.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/generall/textField.dart';
import 'package:food_delivery/screens/navbar/bottomNavbar.dart';
import 'package:food_delivery/screens/login/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPass = TextEditingController();

  final FirebaseAuthServices _authService = FirebaseAuthServices();

  bool isSigning = false;

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    password.dispose();
    confirmPass.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64),
              Text(
                "Sign Up",
                style: TextStyle(
                    color: PColors.primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Enter your details to Sign Up",
                style: TextStyle(
                    color: PColors.light,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              RTextField(
                hintText: "Enter your name",
                controller: userName,
              ),
              const SizedBox(height: 25),
              RTextField(
                hintText: "Enter your email",
                controller: email,
              ),
              const SizedBox(height: 25),
              RTextField(
                hintText: "Enter your password",
                controller: password,
                obscureText: true,
              ),
              const SizedBox(height: 25),
              RTextField(
                hintText: "Confirm password",
                controller: confirmPass,
                obscureText: true,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                  onPressed: _registor,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: PColors.main,
                  ),
                  child: isSigning
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: PColors.light,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        )),
              const SizedBox(height: 55),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Already ave an account? ",
                        style: TextStyle(
                            color: PColors.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                            color: PColors.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void _registor() async {
    setState(() {
      isSigning = true;
    });

    // String userNameController = userName.text;
    String emailController = email.text;
    String passwordController = password.text;
    String confirmpassController = confirmPass.text;

    User? user = await _authService.signUpWIthEmailAndPassword(
      emailController,
      passwordController,
      confirmpassController,
    );

    setState(() {
      isSigning = false;
    });

    if (user != null) {
      showToast(message: "We wellcome you! $user");
      // ignore: use_build_context_synchronously
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const BottomNavbar()));
    }
    if (password.text != confirmPass.text) {
      showToast(message: "Password does't match");
    }
    if (passwordController.length < 6) {
      showToast(message: "Password should be greater than 6 letters!");
    } else {
      showToast(message: "Please add requirements!");
    }
  }
}

// import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/auth_services/auth_service.dart';
import 'package:food_delivery/auth_services/toast_msg.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/generall/textField.dart';
import 'package:food_delivery/screens/navbar/bottomNavbar.dart';
import 'package:food_delivery/screens/login/forgot_pass.dart';
import 'package:food_delivery/screens/signUp/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final FirebaseAuthServices _authService = FirebaseAuthServices();

  bool isLogging = false;
  @override
  void dispose() {
    email.dispose();
    email.dispose();
    password.dispose();

    super.dispose();
  }

  void wrongEmailMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Incorrect Email"),
          );
        });
  }

  void wrongPasswordMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text("Incorrect Password"),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;
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
                "Login Your Account",
                style: TextStyle(
                    color: PColors.primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Add your details to login",
                style: TextStyle(
                    color: PColors.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
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
              ElevatedButton(
                  onPressed: loginMethod,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: PColors.main,
                  ),
                  child: isLogging
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(
                            color: PColors.light,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        )),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ForgotPass()));
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forgot password",
                    style: TextStyle(
                        color: PColors.primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "or with",
                style: TextStyle(
                    color: PColors.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 30),
              InkWell(
                // onTap: signInWithGoogle,
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xff367fC0),
                      borderRadius: BorderRadius.circular(28)),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.g_mobiledata,
                        color: Colors.white,
                        size: 34,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Login with Google",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                            color: PColors.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Registor now",
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

  void loginMethod() async {
    setState(() {
      isLogging = true;
    });
    String emailController = email.text;
    String passwordController = password.text;

    User? user = await _authService.signInWIthEmailAndPassword(
        emailController, passwordController);

    setState(() {
      isLogging = false;
    });

    if (user != null) {
      showToast(message: "Successfully logged in");
      // ignore: use_build_context_synchronously
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const BottomNavbar()));
    } else {
      showToast(message: "Invalid user email or password");
    }
  }

  // signInWithGoogle() async {
  //   final GoogleSignIn _googleSignIn = GoogleSignIn();

  //   try {
  //     final GoogleSignInAccount? googleSignInAccount =
  //         await _googleSignIn.signIn();

  //     if (googleSignInAccount != null) {
  //       final GoogleSignInAuthentication googleSignInAuthentication =
  //           await googleSignInAccount.authentication;

  //       final AuthCredential credential = GoogleAuthProvider.credential(
  //         idToken: googleSignInAuthentication.idToken,
  //         accessToken: googleSignInAuthentication.accessToken,
  //       );

  //       await _authService.signInWithCredential(credential);

  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => BottomNavbar()));
  //     }
  //   } catch (e) {
  //     showToast(message: "An error occured: $e");
  //   }
  // }
}

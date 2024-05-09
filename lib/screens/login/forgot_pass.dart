import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/auth_services/toast_msg.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/generall/textField.dart';

// ignore: must_be_immutable
class ForgotPass extends StatefulWidget {
  ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final user = FirebaseAuth.instance.currentUser;
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Future<void> _resetPassword() async {
    try {
      await _auth.sendPasswordResetEmail(email: emailController.text);
      emailController.clear();
      setState(() {
        showToast(message: '');
      });
      // Show success message or navigate to a success screen
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Success'),
            content: Text('Password reset email sent successfully!'),
          );
        },
      );
    } catch (e) {
      print("Error: $e");
      if (e.toString().contains('TOO_RECENTLY')) {
        setState(() {
          showToast(
              message:
                  'A password reset email has already been sent to this address. Please wait before trying again.');
        });
      } else {
        setState(() {
          showToast(message: 'An error occurred. Please try again later.');
        });
      }
    }
  }

  // Future<void> resetPassword() async {
  //   try {
  //     // final User? user = await auth.getUserByEmail(email);
  //     // final User? user  ;

  //     await _auth.sendPasswordResetEmail(email: emailController.text);
  //     emailController.clear();

  //     setState(() {
  //       Text('');
  //     });

  //     showToast(message: "Please check your email");
  //     // if (user == null) {
  //     // } else {
  //     //   showToast(message: "User does't exist with this email");
  //     // }

  //     //      if (cuser != null) {
  //     //   showToast(message: "Please check your email");
  //     // } else {
  //     //   showToast(message: "Please check your email");
  //     // }
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       setState(() {
  //         showToast(message: "Email is not registored");
  //       });
  //     } else {
  //       setState(() {
  //         showToast(message: "An error occured");
  //       });
  //     }
  //     // print("Error $e");
  //     // if (e.code == 'user-not-found') {
  //     //   // showToast(message: "User does't exist with this email");
  //     //   showDialog(
  //     //       context: context,
  //     //       builder: (context) {
  //     //         return AlertDialog(
  //     //           content: Text(e.message.toString()),
  //     //         );
  //     //       });
  //     // } else {
  //     //   showToast(message: '$e');
  //     // }
  //     // ignore: use_build_context_synchronously
  //     // showDialog(
  //     //     context: context,
  //     //     builder: (context) {
  //     //       return AlertDialog(
  //     //         content: Text(e.message.toString()),
  //     //       );
  //     //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Reset Password",
                        style: TextStyle(
                            color: PColors.primaryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Please enter your email to reset your password",
                        style: TextStyle(
                            color: PColors.light,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 60),
                      RTextField(
                        hintText: "Enter your email",
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 25),
                      ElevatedButton(
                          onPressed: _resetPassword,
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50),
                            backgroundColor: PColors.main,
                          ),
                          child: const Text(
                            "Send",
                            style: TextStyle(
                              color: PColors.light,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          )),
                    ]))));
  }
}

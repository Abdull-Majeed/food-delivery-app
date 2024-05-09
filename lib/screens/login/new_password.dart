import 'package:flutter/material.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/generall/textField.dart';

// ignore: must_be_immutable
class NewPassword extends StatelessWidget {
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "New Password",
                        style: TextStyle(
                            color: PColors.primaryColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 60),
                      RTextField(
                        hintText: "New password",
                        controller: password,
                        obscureText: true,
                      ),
                      const SizedBox(height: 25),
                      RTextField(
                        hintText: "Confirm password",
                        controller: confirmPassword,
                        obscureText: true,
                      ),
                      const SizedBox(height: 45),
                      ElevatedButton(
                          onPressed: () => () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50),
                            backgroundColor: PColors.main,
                          ),
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              color: PColors.light,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          )),
                    ]))));
  }
}

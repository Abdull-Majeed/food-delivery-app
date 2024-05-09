import 'package:flutter/material.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/screens/login/login_screen.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String title = "Enjoy delicious food ";
    String description =
        "Get Rid from goining to market for food we will do it for you";
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/login2.jpg"), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: FractionallySizedBox(
          alignment: Alignment.bottomCenter,
          heightFactor: 0.31,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 243, 243),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: PColors.text,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: PColors.textSecondary,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen())),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: PColors.main,
                    ),
                    child: const Text(
                      "Sign Up With Your Email",
                      style: TextStyle(
                        color: PColors.light,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

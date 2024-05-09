import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/screens/navbar/bottomNavbar.dart';
import 'package:food_delivery/screens/signUp/wellcome_screen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: ((context, snapshot) {
            //user is logged in
            if (snapshot.hasData) {
              return const BottomNavbar();
            }
            //user is not logged in
            else {
              return const WellcomeScreen();
            }
          })),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/screens/navbar/bottomNavbar.dart';

class ProfileScreen extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "Profile",
                        style: TextStyle(
                            color: PColors.light,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/category2.jpg'),
              ),
              const SizedBox(height: 25),
              itemProfile('Name', '$user.name', CupertinoIcons.person),
              const SizedBox(height: 10),
              itemProfile('Phone', '0349-5003512', CupertinoIcons.phone),
              const SizedBox(height: 10),
              itemProfile(
                  'Address', 'xyz city Umerkot', CupertinoIcons.location),
              const SizedBox(height: 10),
              itemProfile('Email', '$user.email', CupertinoIcons.mail),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavbar()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Text('Back to home')),
              )
            ],
          ),
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.white),
      ),
      leading: Icon(
        iconData,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/generall/tbutton.dart';
import 'package:food_delivery/screens/basic%20_creens/home_screen.dart';
import 'package:food_delivery/screens/basic%20_creens/menu_screen.dart';
import 'package:food_delivery/screens/basic%20_creens/more_screen.dart';
import 'package:food_delivery/screens/basic%20_creens/offer_screen.dart';
import 'package:food_delivery/screens/navbar/profile_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int selctTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPage = const HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPage),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            if (selctTab != 2) {
              selctTab = 2;
              selectPage = const HomeScreen();
            }
            if (mounted) {
              setState(() {});
            }
          },
          shape: const CircleBorder(),
          backgroundColor: selctTab == 2
              ? const Color.fromARGB(255, 0, 0, 0)
              : const Color.fromARGB(255, 255, 255, 255),
          child: Image.asset(
            "assets/tab_home.png",
            width: 30,
            height: 30,
            // color: Colors.white,
            color: selctTab == 2 ? Colors.white : Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: PColors.light,
        color: Colors.black,
        shadowColor: Colors.white,
        elevation: 1,
        notchMargin: 12,
        height: 64,
        shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                  title: "Menu",
                  icon: "assets/tab_menu.png",
                  onTap: () {
                    if (selctTab != 0) {
                      selctTab = 0;
                      selectPage = const MenuScreen();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selctTab == 0),
              TabButton(
                  title: "Offer",
                  icon: "assets/tab_offer.png",
                  onTap: () {
                    if (selctTab != 1) {
                      selctTab = 1;
                      selectPage = const OfferScreen();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selctTab == 1),
              const SizedBox(
                width: 40,
                height: 40,
              ),
              TabButton(
                  title: "Profile",
                  icon: "assets/tab_profile.png",
                  onTap: () {
                    if (selctTab != 3) {
                      selctTab = 3;
                      selectPage = ProfileScreen();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selctTab == 3),
              TabButton(
                  title: "More",
                  icon: "assets/tab_more.png",
                  onTap: () {
                    if (selctTab != 4) {
                      selctTab = 4;
                      selectPage = const MoreScreen();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selctTab == 4),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/screens/basic%20_creens/items_details_screen.dart';
import 'package:food_delivery/screens/basic%20_creens/menuItemRow_screen.dart';
import 'package:food_delivery/screens/basic%20_creens/order_screen.dart';

class MenuItemsScreen extends StatefulWidget {
  final Map mObj;
  const MenuItemsScreen({super.key, required this.mObj});

  @override
  State<MenuItemsScreen> createState() => _MenuItemsScreenState();
}

class _MenuItemsScreenState extends State<MenuItemsScreen> {
  TextEditingController txtSearch = TextEditingController();

  List menuItemsArr = [
    {
      "image": "assets/category3.jpg",
      "name": "Pizza",
    },
    {
      "image": "assets/category2.jpg",
      "name": "Burger",
    },
    {
      "image": "assets/category1.jpg",
      "name": "Cheese Paratha",
    },
    {
      "image": "assets/category4.jpg",
      "name": "Chicken burger",
    },
    {
      "image": "assets/category6.jpg",
      "name": "Pizza",
    },
    {
      "image": "assets/category5.jpg",
      "name": "Burgerr",
    },
    {
      "image": "assets/category3.jpg",
      "name": "Finger chips",
    },
    {
      "image": "assets/category4.jpg",
      "name": "Chicken roll",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset("assets/btn_back.png",
                          color: Colors.white, width: 20, height: 20),
                    ),
                    const SizedBox(
                      width: 08,
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          "Most Selled Items",
                          style: TextStyle(
                              color: PColors.light,
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyOrderView()));
                      },
                      icon: Image.asset(
                        "assets/shopping_cart.png",
                        width: 25,
                        height: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: menuItemsArr.length,
                itemBuilder: ((context, index) {
                  var mObj = menuItemsArr[index] as Map? ?? {};
                  return MenuItemRow(
                    mObj: mObj,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ItemDetailsScreen()),
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

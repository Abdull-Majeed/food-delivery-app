import 'package:flutter/material.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/screens/basic%20_creens/items_details_screen.dart';
import 'package:food_delivery/screens/basic%20_creens/menuItemRow_screen.dart';
import 'package:food_delivery/screens/basic%20_creens/order_screen.dart';

class ViewAllPopularRestaurant extends StatefulWidget {
  final Map mObj;
  const ViewAllPopularRestaurant({super.key, required this.mObj});

  @override
  State<ViewAllPopularRestaurant> createState() =>
      ViewAllPopularRestaurantState();
}

class ViewAllPopularRestaurantState extends State<ViewAllPopularRestaurant> {
  TextEditingController txtSearch = TextEditingController();

  List menuItemsArr = [
    {
      "image": "assets/category3.jpg",
      "name": "French Apple Pie",
    },
    {
      "image": "assets/category2.jpg",
      "name": "Dark Chocolate Cake",
    },
    {
      "image": "assets/category1.jpg",
      "name": "Street Shake",
    },
    {
      "image": "assets/category4.jpg",
      "name": "Fudgy Chewy Brownies",
    },
    {
      "image": "assets/category6.jpg",
      "name": "French Apple Pie",
    },
    {
      "image": "assets/category5.jpg",
      "name": "Dark Chocolate Cake",
    },
    {
      "image": "assets/category3.jpg",
      "name": "Street Shake",
    },
    {
      "image": "assets/category4.jpg",
      "name": "Fudgy Chewy Brownies",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset("assets/btn_back.png",
                          width: 20, height: 20),
                    ),
                    const SizedBox(
                      width: 08,
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          widget.mObj["name"].toString(),
                          style: TextStyle(
                              color: PColors.primaryText,
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

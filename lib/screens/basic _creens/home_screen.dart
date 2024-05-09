import 'package:flutter/material.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/generall/famous_rest.dart';
import 'package:food_delivery/generall/home_view.dart';
import 'package:food_delivery/generall/most_famous.dart';
import 'package:food_delivery/screens/basic%20_creens/item_screen.dart';
import 'package:food_delivery/screens/basic%20_creens/items_details_screen.dart';
import 'package:food_delivery/screens/basic%20_creens/order_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtSearch = TextEditingController();

  List popArr = [
    {
      "image": "assets/category6.jpg",
      "name": "Pizza",
    },
    {
      "image": "assets/category4.jpg",
      "name": "Biryani",
    },
    {
      "image": "assets/category2.jpg",
      "name": "Beef Burger",
    },
    {
      "image": "assets/category3.jpg",
      "name": "Biryani",
    },
  ];

  List mostPopArr = [
    {
      "image": "assets/category2.jpg",
      "name": "Fried Fish",
    },
    {
      "image": "assets/category1.jpg",
      "name": "Chicken Biryani",
    },
    {
      "image": "assets/category3.jpg",
      "name": "Fried Fish",
    },
    {
      "image": "assets/category6.jpg",
      "name": "Chicken Biryani",
    },
  ];

  List recentArr = [
    {
      "image": "assets/category6.jpg",
      "name": "Pizza",
    },
    {
      "image": "assets/category5.jpg",
      "name": "Burger",
    },
    {
      "image": "assets/category3.jpg",
      "name": "Pizza Rush",
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Hi! Wellcome ",
                      style: TextStyle(
                          color: PColors.light,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyOrderView()));
                        },
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: PColors.light,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivering to your",
                      style: TextStyle(color: PColors.light, fontSize: 11),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(
                              color: PColors.light,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.green,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: "Fast Food",
                  onView: () {},
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: mostPopArr.length,
                  itemBuilder: ((context, index) {
                    var mObj = mostPopArr[index] as Map? ?? {};
                    return MostPopularCell(
                      mObj: mObj,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ItemDetailsScreen()));
                      },
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: "Newly added items",
                  onView: () {},
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: recentArr.length,
                itemBuilder: ((context, index) {
                  var rObj = recentArr[index] as Map? ?? {};
                  return RecentItemRow(
                    rObj: rObj,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ItemDetailsScreen()));
                    },
                  );
                }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: "Most selled items",
                  onView: () {},
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: popArr.length,
                itemBuilder: ((context, index) {
                  var pObj = popArr[index] as Map? ?? {};
                  return MostSelled(
                    pObj: pObj,
                    onTap: () {},
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

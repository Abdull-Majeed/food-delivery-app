import 'package:flutter/material.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/screens/basic%20_creens/menu_item_screen.dart';
import 'package:food_delivery/screens/basic%20_creens/order_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List menuArr = [
    {
      "name": "Fast food",
      "image": "assets/category1.jpg",
      "items_count": "120",
    },
    {
      "name": "Drinks",
      "image": "assets/category2.jpg",
      "items_count": "220",
    },
    {
      "name": "Healthy food",
      "image": "assets/category3.jpg",
      "items_count": "155",
    },
    {
      "name": "Sweet dishes",
      "image": "assets/category4.jpg",
      "items_count": "25",
    },
  ];
  TextEditingController txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          SingleChildScrollView(
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
                          "Menu",
                          style: TextStyle(
                              color: PColors.light,
                              fontSize: 26,
                              fontWeight: FontWeight.w800),
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
                            color: Colors.white,
                            height: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                        child: Text(
                          "We have a huge verity of different delicious items which you can test by just one click",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      padding: const EdgeInsets.symmetric(
                          vertical: 50, horizontal: 20),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: menuArr.length,
                      itemBuilder: ((context, index) {
                        var mObj = menuArr[index] as Map? ?? {};
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuItemsScreen(
                                  mObj: mObj,
                                ),
                              ),
                            );
                          },
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 8, bottom: 8, right: 20),
                                width: media.width - 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 7,
                                          offset: Offset(0, 4))
                                    ]),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipOval(
                                    child: Image.asset(
                                      mObj["image"].toString(),
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          mObj["name"].toString(),
                                          style: TextStyle(
                                              color: PColors.primaryText,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "${mObj["items_count"].toString()} items",
                                          style: TextStyle(
                                              color: PColors.secondaryText,
                                              fontSize: 11),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      width: 40,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(17.5),
                                          boxShadow: const [
                                            BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 4,
                                                offset: Offset(0, 2))
                                          ]),
                                      alignment: Alignment.center,
                                      child: const Icon(
                                          Icons.arrow_forward_rounded)),
                                ],
                              ),
                            ],
                          ),
                        );
                      }))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

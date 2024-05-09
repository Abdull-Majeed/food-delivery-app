import 'package:flutter/material.dart';
import 'package:food_delivery/generall/button.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/screens/addToCart/addToCart.dart';

class MyOrderView extends StatefulWidget {
  const MyOrderView({super.key});

  @override
  State<MyOrderView> createState() => _MyOrderViewState();
}

class _MyOrderViewState extends State<MyOrderView> {
  // List itemArr = [
  //   {"name": "Beef Burger", "qty": "1", "price": 350.0},
  //   {"name": "Chicken Burger", "qty": "1", "price": 300.0},
  //   {"name": "Chicken roll", "qty": "1", "price": 300.0},
  //   {"name": "Biryani", "qty": "1", "price": 150.0},
  //   {"name": "French Fires", "qty": "1", "price": 150.0}
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
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
                      width: 8,
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          "My Orders List",
                          style: TextStyle(
                              color: PColors.light,
                              fontSize: 26,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/category2.jpg",
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        )),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Burgers",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: PColors.light,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                "4.3",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: PColors.primaryColor, fontSize: 12),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "(124 Ratings)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: PColors.light, fontSize: 12),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Delivery Instructions",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: PColors.light,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.add, color: PColors.primaryColor),
                          label: Text(
                            "Add Comment",
                            style: TextStyle(
                                color: PColors.primaryColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: PColors.light.withOpacity(0.5),
                      height: 1,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Without delivery charges",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: PColors.light,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\300",
                          style: TextStyle(
                              color: PColors.primaryColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Delivery charges",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: PColors.light,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\50",
                          style: TextStyle(
                              color: PColors.primaryColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Divider(
                      color: PColors.light.withOpacity(0.5),
                      height: 1,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Total",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: PColors.light,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\350",
                          style: TextStyle(
                              color: PColors.primaryColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    PButoon(
                        title: "Checkout",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CheckoutView(),
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

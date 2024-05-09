import 'package:flutter/material.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/screens/basic%20_creens/order_screen.dart';

class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({super.key});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  double price = 350;
  int qty = 1;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset("assets/category4.jpg",
              width: media.width, height: media.width, fit: BoxFit.cover),
          Container(
              width: media.width,
              height: media.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 141, 141, 141),
                  Colors.transparent,
                  Color.fromARGB(255, 155, 155, 155)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              )),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      SizedBox(height: media.width - 45),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 35),
                              const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25),
                                  child: Text("Tandoori Chicken Pizza",
                                      style: TextStyle(
                                          color: PColors.light,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w800))),
                              const SizedBox(height: 8),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 4),
                                            Text("High Ratted",
                                                style: TextStyle(
                                                    color: PColors.light,
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w500))
                                          ]),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text("${price}",
                                                style: const TextStyle(
                                                    color: PColors.light,
                                                    fontSize: 31,
                                                    fontWeight:
                                                        FontWeight.w700))
                                          ])
                                    ]),
                              ),
                              const SizedBox(height: 15),
                              const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25),
                                  child: Text("Description",
                                      style: TextStyle(
                                          color: PColors.light,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700))),
                              const SizedBox(
                                height: 8,
                              ),
                              const Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Text(
                                    "Tandori Chicken Pizza is made up of testy mixup of multiple things which made this most delicious food",
                                    style: TextStyle(
                                        color: PColors.light, fontSize: 12)),
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: Divider(
                                      color: PColors.secondaryText
                                          .withOpacity(0.4),
                                      height: 1)),
                              const SizedBox(height: 25),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: Row(children: [
                                    const Text(
                                      "Number of Items",
                                      style: TextStyle(
                                          color: PColors.light,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const Spacer(),
                                    InkWell(
                                        onTap: () {
                                          qty = qty - 1;

                                          if (qty < 1) {
                                            qty = 1;
                                          }
                                          setState(() {});
                                        },
                                        child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15),
                                            height: 25,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.5)),
                                            child: const Text("-",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w700)))),
                                    const SizedBox(width: 8),
                                    Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        height: 25,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.white,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.5)),
                                        child: Text(
                                          qty.toString(),
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        )),
                                    const SizedBox(width: 8),
                                    InkWell(
                                        onTap: () {
                                          qty = qty + 1;
                                          setState(() {});
                                        },
                                        child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15),
                                            height: 25,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.5)),
                                            child: const Text("+",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w700))))
                                  ])),
                              SizedBox(
                                  height: 220,
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Center(
                                            child: Stack(
                                                alignment:
                                                    Alignment.centerRight,
                                                children: [
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 8,
                                                      bottom: 8,
                                                      left: 10,
                                                      right: 20),
                                                  width: media.width - 80,
                                                  height: 150,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color.fromARGB(
                                                                  255,
                                                                  241,
                                                                  241,
                                                                  241),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          15)),
                                                          boxShadow: [
                                                        BoxShadow(
                                                            color: Colors.white,
                                                            blurRadius: 8,
                                                            offset:
                                                                Offset(0, 4))
                                                      ]),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Text(
                                                            "Total Price",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        const SizedBox(
                                                            height: 15),
                                                        Text(
                                                            "${(price * qty).toString()}",
                                                            style: const TextStyle(
                                                                color: PColors
                                                                    .text,
                                                                fontSize: 21,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700)),
                                                        const SizedBox(
                                                            height: 15),
                                                        //button
                                                        const AddToCartButton(),
                                                      ]))
                                            ]))
                                      ])),
                              const SizedBox(
                                height: 20,
                              ),
                            ]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset(
                        "assets/btn_back.png",
                        width: 20,
                        height: 20,
                        color: PColors.light,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({super.key});

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 65),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyOrderView()));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 2.5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Add to cart",
                  style: TextStyle(
                    color: PColors.light,
                    height: 3.5,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          style: ElevatedButton.styleFrom(primary: Colors.black),
        ),
      ),
    ]));
  }
}

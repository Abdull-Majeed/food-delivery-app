import 'package:flutter/material.dart';
import 'package:food_delivery/generall/button.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/screens/basic%20_creens/addCard_screen.dart';
import 'package:food_delivery/screens/basic%20_creens/order_screen.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  List cardArr = [
    {
      "icon": "assets/visa_icon.png",
      "card": "**** **** **** 2187",
    }
  ];

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
                padding: const EdgeInsets.symmetric(horizontal: 15),
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
                      child: Text(
                        "Payment Details",
                        style: TextStyle(
                            color: PColors.light,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyOrderView()));
                      },
                      // icon: Image.asset(
                      //   "assets/paypal.png",
                      //   width: 25,
                      //   height: 25,
                      //   color: Colors.white,
                      // ),
                      icon: Icon(Icons.payment),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Text(
                  "Customize your payment method",
                  style: TextStyle(
                      color: PColors.light,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Divider(
                  color: PColors.light.withOpacity(0.4),
                  height: 1,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 15,
                          offset: Offset(0, 9))
                    ]),
                child: Column(
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cash/Card On Delivery",
                            style: TextStyle(
                                color: PColors.light,
                                fontSize: 12,
                                fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            Icons.money_rounded,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Divider(
                        color: PColors.secondaryText.withOpacity(0.4),
                        height: 1,
                      ),
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: cardArr.length,
                      itemBuilder: ((context, index) {
                        var cObj = cardArr[index] as Map? ?? {};
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 35),
                          child: Row(
                            children: [
                              Image.asset(
                                cObj["icon"].toString(),
                                width: 50,
                                height: 35,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Text(
                                  cObj["card"].toString(),
                                  style: const TextStyle(
                                      color: PColors.light,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Icon(
                                Icons.attach_money_sharp,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: PButoon(
                  title: "Add card",
                  onPressed: () => const AddCardScreen(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_delivery/generall/button.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/screens/navbar/bottomNavbar.dart';

class CheckoutMessage extends StatefulWidget {
  const CheckoutMessage({super.key});

  @override
  State<CheckoutMessage> createState() => _CheckoutMessageState();
}

class _CheckoutMessageState extends State<CheckoutMessage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      width: media.width,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 10, 10, 10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 3,
                blurRadius: 8,
                offset: Offset(2, 4))
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: PColors.primaryText,
                  size: 25,
                ),
              )
            ],
          ),
          const Text(
            "Thank You!",
            style: TextStyle(
                color: PColors.light,
                fontSize: 26,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Your order is completed",
            style: TextStyle(
                color: PColors.light,
                fontSize: 17,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Your order is now being processed. We will let you know once the order is picked from the our side.",
            textAlign: TextAlign.center,
            style: TextStyle(color: PColors.light, fontSize: 14),
          ),
          const SizedBox(
            height: 35,
          ),
          PButoon(
              title: "Back to home",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BottomNavbar()));
              }),
          const SizedBox(
            height: 28,
          ),
        ],
      ),
    );
  }
}

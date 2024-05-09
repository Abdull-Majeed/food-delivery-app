import 'package:flutter/material.dart';
import 'package:food_delivery/generall/button.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/generall/textField.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  TextEditingController txtCardNumber = TextEditingController();
  TextEditingController txtCardMonth = TextEditingController();
  TextEditingController txtCardYear = TextEditingController();
  TextEditingController txtCardCode = TextEditingController();
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  bool isAnyTime = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      width: media.width,
      decoration: const BoxDecoration(
          color: PColors.light,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Add Credit/Debit Card",
                style: TextStyle(
                    color: PColors.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
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
          Divider(
            color: PColors.secondaryText.withOpacity(0.4),
            height: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          RTextField(
            hintText: "Card Number",
            controller: txtCardNumber,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Expiry",
                style: TextStyle(
                    color: PColors.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              SizedBox(
                width: 100,
                child: RTextField(
                  hintText: "MM",
                  controller: txtCardMonth,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 25),
              SizedBox(
                width: 100,
                child: RTextField(
                  hintText: "YYYY",
                  controller: txtCardYear,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          RTextField(
            hintText: "Card Security Code",
            controller: txtCardCode,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 15,
          ),
          RTextField(
            hintText: "First Name",
            controller: txtFirstName,
          ),
          const SizedBox(
            height: 15,
          ),
          RTextField(
            hintText: "Last Name",
            controller: txtLastName,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            Text(
              "You can remove this card at anytime",
              style: TextStyle(
                  color: PColors.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Switch(
                value: isAnyTime,
                activeColor: PColors.primaryColor,
                onChanged: (newVal) {
                  setState(() {
                    isAnyTime = newVal;
                  });
                })
          ]),
          const SizedBox(
            height: 25,
          ),
          PButoon(title: "Add Card", onPressed: () {}),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

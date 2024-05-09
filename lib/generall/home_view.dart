import 'package:flutter/material.dart';
import 'package:food_delivery/generall/colors.dart';
import 'package:food_delivery/screens/basic%20_creens/popular_res.dart';

class ViewAllTitleRow extends StatelessWidget {
  final String title;
  final VoidCallback onView;
  const ViewAllTitleRow({super.key, required this.title, required this.onView});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: PColors.light, fontSize: 20, fontWeight: FontWeight.w800),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MenuItemsScreen(
                          mObj: {},
                        )));
          },
          child: const Text(
            "View all",
            style: TextStyle(
                color: Colors.red, fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

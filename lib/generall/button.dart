import 'package:flutter/material.dart';

enum PButtonType { bgPrimary, textPrimary }

class PButoon extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final PButtonType type;
  const PButoon(
      {super.key,
      required this.title,
      required this.onPressed,
      this.type = PButtonType.bgPrimary});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 66,
        decoration: BoxDecoration(
          color: const Color.fromARGB(136, 34, 129, 31),
          borderRadius: BorderRadius.circular(32),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

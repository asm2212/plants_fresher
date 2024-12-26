import 'package:flutter/material.dart';
import 'package:plants_fresher/utils/constants.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  final double fontSize;
  const RoundButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: Constants.buttonColor,
        ),
        child: Text(
          title,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w700,
              color: Constants.white),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:plants_fresher/utils/constants.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String hintText;
  final String icon;
  final Widget? rightIcon;
  final  EdgeInsets? margin;
  final bool obscureText;
  const RoundTextfield({super.key,
   this.controller, 
   required this.hintText, 
   required this.icon, 
   this.margin, 
   this.keyboardType,
   this.obscureText = false, 
   this.rightIcon,
   });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: margin,
                  decoration: BoxDecoration(
                      color: Constants.placeholder,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    controller: controller,
                    keyboardType: keyboardType,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: hintText,
                      prefixIcon: Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          icon,
                          width: 24,
                          height: 24,
                          fit: BoxFit.contain,
                        ),
                      ),
                      hintStyle:
                          TextStyle(color: Constants.secondaryText, fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                );
  }
}
import 'package:flutter/material.dart';
import 'package:plants_fresher/utils/constants.dart';

class TabButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String icon;
  final bool isSelected;
  
  const TabButton({super.key, required this.onTap, required this.title, required this.isSelected, required this.icon});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
              onTap: onTap,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    icon,
                    width: 15,
                    height: 15,
                    color: isSelected ? Constants.primary : Constants.placeholder,
                    ), 
                  const SizedBox(height: 4,),
                    Text(
                     title,
                      style: TextStyle(
                        color: isSelected ? Constants.primary : Constants.placeholder,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                ],
              ),
            );
  }
}
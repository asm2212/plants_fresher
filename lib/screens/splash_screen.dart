import 'package:flutter/material.dart';
import 'package:plants_fresher/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Constants.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash.png',
              height: media.height * 0.25,
              ),
           SizedBox(height: media.height * 0.02,),
           Text.rich(
              TextSpan(
                text: 'Plants ',
                style: TextStyle(
                  fontSize: 35,
                  color: Constants.black,
                  fontWeight: FontWeight.w700
                ),
                children: [
                  TextSpan(
                    text: 'Fresher',
                    style: TextStyle(
                      fontSize: 35,
                      color: Constants.primaryText,
                      fontWeight: FontWeight.w700
                    )
                  )
                ]
              )
           )
          ],
        )
      ),
    );
  }
}
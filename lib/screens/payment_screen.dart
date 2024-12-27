import 'package:flutter/material.dart';
import 'package:plants_fresher/common_widget/round_button.dart';
import 'package:plants_fresher/common_widget/round_text_field.dart';
import 'package:plants_fresher/screens/my_cart_screen.dart';
import 'package:plants_fresher/screens/success_screen.dart';
import 'package:plants_fresher/utils/constants.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyCartScreen(),
                  ),
                );
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Constants.placeholder,
                child: Image.asset(
                  "assets/images/arrow_back.png",
                  width: 15,
                  height: 15,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          title: Text(
            'Payment Method',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Constants.buttonColor,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                "assets/images/v_more.png",
                width: 30,
                height: 30,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: media.height * 0.05),
                Text(
                  "Delivery Address",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Constants.black,
                  ),
                ),
                SizedBox(height: media.height * 0.015),
                Row(children: [
                  Image.asset(
                    "assets/images/map.png",
                    width: media.width * 0.52,
                    height: media.height * 0.2,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: media.width * 0.02),
                  Column(
                    children: [
                      Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 18,
                        color: Constants.black,
                            fontWeight: FontWeight.w700
                      ),
                    
                    ),
                    Text(
                      "B/A house 2,",
                      style: TextStyle(
                        fontSize: 18,
                        color: Constants.black,
                            fontWeight: FontWeight.w700
                      ),
                    
                    ),
                    Text(
                      "new land",
                      style: TextStyle(
                        fontSize: 18,
                        color: Constants.black,
                            fontWeight: FontWeight.w700
                      ),
                    
                    ),
                    Text(
                      "2500",
                      style: TextStyle(
                        fontSize: 18,
                        color: Constants.black,
                        fontWeight: FontWeight.w700
                      ),
                    
                    )
                    ]
                  )
                ],
                ),
                    SizedBox(height: media.height * 0.05),
                Text(
                  " Add Payment Method",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Constants.buttonColor,
                  ),
                ),
                SizedBox(height: media.height * 0.015),
                RoundTextfield(
                  hintText: "**** ****  ****  1234", 
                  icon: "assets/images/visa.png",
                  rightIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: Constants.buttonColor,
                      child: Icon(
                        Icons.check,
                        color: Constants.white,
                        size: 25,
                      ),
                    ),
                  ),
                  ),
                    SizedBox(height: media.height * 0.015),
                RoundTextfield(
                  hintText: "asmareadmasu0@gmail.com", 
                  icon: "assets/images/paypall.png",
                  rightIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: Constants.secondaryText,
                      child: Icon(
                        Icons.check,
                        color: Constants.white,
                        size: 25,
                      ),
                    ),
                  ),
                  ),
                    SizedBox(height: media.height * 0.015),
                RoundTextfield(
                  hintText: "**** ****  ****  1234", 
                  icon: "assets/images/master.png",
                  rightIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: Constants.secondaryText,
                      child: Icon(
                        Icons.check,
                        color: Constants.white,
                        size: 25,
                      ),
                    ),
                  ),
                  ),
                   SizedBox(height: media.height* 0.05,),
                  Row(
                    children: [
                      Text(
                        "Total:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Constants.black,
                        ),
                      ),
                      Spacer(),
                        Text(
                        "\$170",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Constants.black,
                        ),
                      ),
                    ],
                  ),
                    SizedBox(height: media.height* 0.08,),
                    RoundButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SuccessScreen()));
                    }, title: "Payment"),
              ],
            ),
          ),
        ));
  }
}

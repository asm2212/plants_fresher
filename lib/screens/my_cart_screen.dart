import 'package:flutter/material.dart';
import 'package:plants_fresher/common_widget/round_button.dart';
import 'package:plants_fresher/screens/order_screen.dart';
import 'package:plants_fresher/screens/payment_screen.dart';
import 'package:plants_fresher/utils/constants.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
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
                          builder: (context) => const OrderScreen(),
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
          'My Cart',
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
      backgroundColor: Constants.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
           SizedBox(
            height: media.height * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: media.height * 0.12,
                    decoration: BoxDecoration(
                      color: Constants.rectangleColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border(
                        bottom: BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "assets/images/recent1.png",
                            height: media.height * 0.1,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Aloe Vera",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Constants.primaryText,
                              ),
                            ),
                            Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Constants.secondaryText,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: media.height * 0.03,
                                  width: media.width * 0.07,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Constants.rectangleColor,
                                    border: Border.all(
                                      color: Constants.buttonColor,
                                      width: 2
                                    )
                                  ),
                                  
                                    child: Center(
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Constants.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Constants.black,
                                  ),
                                ),
                                   const SizedBox(width: 8),
                                   Container(
                                  height: media.height * 0.03,
                                  width: media.width * 0.07,
                                  decoration: BoxDecoration(
                                    color: Constants.rectangleColor,
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                      color: Constants.buttonColor,
                                      width: 2
                                    ),
                                  ),
                                  
                                    child: Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Constants.black,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: media.width * 0.15),
                        Container(
                          height: media.height * 0.05,
                          width: media.width * 0.22,
                            decoration: BoxDecoration(
                              color: Constants.rectColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "\$20",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3A7F0D),
                                ),                   
                              ),
                            ),
                        )
                      ],
                    ),
                  ),
                ),
                  SizedBox(height: media.height * 0.02),
                     Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: media.height * 0.12,
                    decoration: BoxDecoration(
                      color: Constants.rectangleColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border(
                        bottom: BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "assets/images/recent2.png",
                            height: media.height * 0.1,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pink Pot",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Constants.primaryText,
                              ),
                            ),
                            Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Constants.secondaryText,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: media.height * 0.03,
                                  width: media.width * 0.07,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Constants.rectangleColor,
                                    border: Border.all(
                                      color: Constants.buttonColor,
                                      width: 2
                                    )
                                  ),
                                  
                                    child: Center(
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Constants.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Constants.black,
                                  ),
                                ),
                                   const SizedBox(width: 8),
                                   Container(
                                  height: media.height * 0.03,
                                  width: media.width * 0.07,
                                  decoration: BoxDecoration(
                                    color: Constants.rectangleColor,
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                      color: Constants.buttonColor,
                                      width: 2
                                    ),
                                  ),
                                  
                                    child: Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Constants.black,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: media.width * 0.15),
                        Container(
                          height: media.height * 0.05,
                          width: media.width * 0.22,
                            decoration: BoxDecoration(
                              color: Constants.rectColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "\$20",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3A7F0D),
                                ),                   
                              ),
                            ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: media.height * 0.02),
                     Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: media.height * 0.12,
                    decoration: BoxDecoration(
                      color: Constants.rectangleColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border(
                        bottom: BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "assets/images/recent4.png",
                            height: media.height * 0.1,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Globie",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Constants.primaryText,
                              ),
                            ),
                            Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Constants.secondaryText,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: media.height * 0.03,
                                  width: media.width * 0.07,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Constants.rectangleColor,
                                    border: Border.all(
                                      color: Constants.buttonColor,
                                      width: 2
                                    )
                                  ),
                                  
                                    child: Center(
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Constants.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Constants.black,
                                  ),
                                ),
                                   const SizedBox(width: 8),
                                   Container(
                                  height: media.height * 0.03,
                                  width: media.width * 0.07,
                                  decoration: BoxDecoration(
                                    color: Constants.rectangleColor,
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                      color: Constants.buttonColor,
                                      width: 2
                                    ),
                                  ),
                                  
                                    child: Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Constants.black,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: media.width * 0.15),
                        Container(
                          height: media.height * 0.05,
                          width: media.width * 0.22,
                            decoration: BoxDecoration(
                              color: Constants.rectColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "\$10",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3A7F0D),
                                ),                   
                              ),
                            ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: media.height * 0.02),
                     Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: media.height * 0.12,
                    decoration: BoxDecoration(
                      color: Constants.rectangleColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border(
                        bottom: BorderSide(color: Colors.white, width: 1),
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "assets/images/recent5.png",
                            height: media.height * 0.1,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Chew",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Constants.primaryText,
                              ),
                            ),
                            Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Constants.secondaryText,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: media.height * 0.03,
                                  width: media.width * 0.07,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Constants.rectangleColor,
                                    border: Border.all(
                                      color: Constants.buttonColor,
                                      width: 2
                                    )
                                  ),
                                  
                                    child: Center(
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Constants.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Constants.black,
                                  ),
                                ),
                                   const SizedBox(width: 8),
                                   Container(
                                  height: media.height * 0.03,
                                  width: media.width * 0.07,
                                  decoration: BoxDecoration(
                                    color: Constants.rectangleColor,
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                      color: Constants.buttonColor,
                                      width: 2
                                    ),
                                  ),
                                  
                                    child: Center(
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Constants.black,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: media.width * 0.15),
                        Container(
                          height: media.height * 0.05,
                          width: media.width * 0.22,
                            decoration: BoxDecoration(
                              color: Constants.rectColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "\$50",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3A7F0D),
                                ),                   
                              ),
                            ),
                        )
                      ],
                    ),
                  ),
                ),
           Container(
            height: media.height * 0.33,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),),
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 20,
                  color: Color(0x33000000),
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                Row(
                  children: [
                    Text(
                      "Subtotal:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Constants.buttonColor,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$100",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Constants.buttonColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "Shipping Charges:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Constants.buttonColor,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$70",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Constants.buttonColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                 Divider(
                  color: Constants.secondaryText,
                  thickness: 2.0,
                 ),
                       Row(
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Constants.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "\$170",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Constants.black,
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: media.height*0.08),
                RoundButton(
                  title: "Place your Order",
                  fontSize: 16,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentScreen(),
                      ),
                    );
                  },
                ),
              ],
              ),
            ),
           )
          ],
        )
      ),
    );
  }
}
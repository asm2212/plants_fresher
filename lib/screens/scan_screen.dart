import 'package:flutter/material.dart';
import 'package:plants_fresher/screens/order_screen.dart';
import 'package:plants_fresher/utils/constants.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Constants.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                elevation: 0,
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
                expandedHeight: media.width * 1,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Image.asset(
                        "assets/images/recommend1.png",
                        width: media.width,
                        height: media.width * 1.8,
                        fit: BoxFit.cover,
                      ),
                      Positioned.fill(
                        child: Image.asset(
                          "assets/images/scan.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: media.width * 0.05,
              vertical: media.height * 0.03,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 4,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Constants.secondaryText,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                SizedBox(height: media.width * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Scan",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Constants.buttonColor,
                          ),
                        ),
                        Text(
                          "Identification",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Constants.secondaryText,
                          ),
                        ),
                        Text(
                          "Promo Code Love Plants",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Constants.primaryText,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/images/mobile.png",
                      height: media.height * 0.1,
                    ),
                  ],
                ),
                SizedBox(height: media.height * 0.02),
                Container(
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
                  SizedBox(height: media.height * 0.02),
                Container(
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
                              "\$25",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff3A7F0D),
                              ),                   
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

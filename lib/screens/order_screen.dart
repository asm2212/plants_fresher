import 'package:flutter/material.dart';
import 'package:plants_fresher/screens/my_cart_screen.dart';
import 'package:plants_fresher/screens/scan_screen.dart';
import 'package:plants_fresher/utils/constants.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
                        MaterialPageRoute(builder: (context) => const ScanScreen()),
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
                  background: Image.asset(
                    "assets/images/recommend1.png",
                    width: media.width,
                    height: media.width * 0.2,
                    fit: BoxFit.cover,
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
                    Text(
                      "Indoor\nPlant Jasmeen",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Constants.primaryText,
                      ),
                    ),
                    Container(
                      height: media.height * 0.04,
                      width: media.width * 0.25,
                      decoration: BoxDecoration(
                        color: Constants.buttonColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "-",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Constants.white,
                              ),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Constants.white,

                              ),
                            ),
                            Text(
                              "+",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Constants.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\$30.00",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Constants.buttonColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Row(
                      children: List.generate(
                        5,
                        (index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: media.height * 0.02),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Constants.buttonColor,
                      ),
                    ),
                    SizedBox(height: media.height * 0.01),
                    Text(
                      "Jasmeen is a popular Indoor plant with a long-lasting, nutrient-rich root system that thrives in well-draining, well-ventilated environments. It is an excellent choice for beginners and seasonal plants. It requires less water and fertilizer than most other Indoor plants.",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Constants.secondaryText,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: media.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildAttribute(
                      icon: Icons.height_rounded,
                      label: 'Height\n7.5"',
                    ),
                    _buildAttribute(
                      icon: Icons.water_drop,
                      label: 'Humidity\n4.5%',
                    ),
                    _buildAttribute(
                      icon: Icons.thermostat,
                      label: 'Temperature\n30°F',
                    ),
                  ],
                ),
                SizedBox(height: media.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Constants.placeholder,
                      child: Image.asset(
                        "assets/images/b_cart.png",
                        width: 40,
                        height: 40,
                        fit: BoxFit.contain,
                      ),
                    ),
                    
                    Container(
                      height: media.height * 0.05,
                      width: media.width * 0.5,
                      decoration: BoxDecoration(
                        color: Constants.buttonColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_cart, size: 25, color: Constants.white),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyCartScreen()));
                                },
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Constants.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAttribute({required IconData icon, required String label}) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Constants.buttonColor,
          child: Icon(icon, color: Constants.white),
        ),
        const SizedBox(width: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: Constants.secondaryText,
          ),
        ),
      ],
    );
  }
}

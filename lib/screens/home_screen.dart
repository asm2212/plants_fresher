import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_fresher/common_widget/round_text_field.dart';
import 'package:plants_fresher/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: media.width * 0.05, vertical: media.height * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/menu.png",
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    "assets/images/profile.png",
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                  ),
               
                  Spacer(),
                 CircleAvatar(
                  backgroundColor: Constants.primaryText,
                   child: IconButton(
                    onPressed: (){}, 
                    icon: Icon(
                      Icons.shopping_cart,
                      size: 30,
                      color: Colors.white,
                      )
                    ),
                 ),
                ],
              ),
              Text(
                "Let's find your plants!",
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Constants.buttonColor
                ),
              ),
              SizedBox(height: media.height * 0.02),
           RoundTextfield(
            hintText: "Search Plants",
            icon: "assets/images/search.png",
            rightIcon:  Icon(Icons.mic,size: 30,),
           ),
           SizedBox(height: media.height * 0.02),
           Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFF0F0F0),
                ),
                child: Text(
                    "Recommended",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Constants.buttonColor
                    ),
                  ),
              ),
              Spacer(),
              Text(
                "Top",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Constants.secondaryText
                  ),
              ),
              Spacer(),
              Text(
                "Indoor",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Constants.secondaryText
                ),
              ),
              Spacer(),
              Text(
                "Outdoor",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Constants.secondaryText
                  ),
              ),
            ]
           ),
           SizedBox(height: media.height * 0.02),
         Row(
  children: [
    Container(
      height: media.height * 0.29,
      width: media.width * 0.43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Constants.primary,
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Stack(
        children: [
          // Background Image
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              "assets/images/recommend1.png",
              height: media.height * 0.22,
              width: media.width * 0.43,
              fit: BoxFit.cover,
            ),
          ),
          // Bottom Left: Title and Subtitle
          Positioned(
            left: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Indoor",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Constants.buttonColor,
                  ),
                ),
                // 34493A
                Text(
                  "Plant Jasmeen",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                     color: Constants.buttonColor,
                  ),
                ),
              ],
            ),
          ),
          // Bottom Right: Price and Rating
          Positioned(
            right: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Constants.circleColor,
                  child: Text(
                    "\$25",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Image.asset("assets/images/rating.png",
                        height: 12,),
                    Text(
                      " 5.0",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Spacer(),
    Container(
      height: media.height * 0.29,
      width: media.width * 0.43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Constants.primary,
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Stack(
        children: [
          // Background Image
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              "assets/images/recommend3.png",
              height: media.height * 0.22,
              width: media.width * 0.43,
              fit: BoxFit.cover,
            ),
          ),
          // Bottom Left: Title and Subtitle
          Positioned(
            left: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Indoor",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Constants.buttonColor,
                  ),
                ),
                Text(
                  "Leaves Lights",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Constants.buttonColor,
                  ),
                ),
              ],
            ),
          ),
          // Bottom Right: Price and Rating
          Positioned(
            right: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Constants.circleColor,
                  child: Text(
                    "\$15",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Image.asset("assets/images/rating.png",
                        height: 12,),
                    Text(
                      " 5.0",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ],
),
SizedBox(height: media.height * 0.02),
Row(
  children: [
     Container(
       height: media.height * 0.10,
       width: media.width * 0.43,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(40),
         color: Constants.placeholder,

       ),
       child: Image.asset(
         "assets/images/recommend4.png",
         height: media.height * 0.10,
         width: media.width * 0.43,
         fit: BoxFit.cover,
       ),
     ), 
     Spacer(),
     Container(
      height: media.height * 0.10,
      width: media.width * 0.43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Constants.placeholder,
      ),
      child: Image.asset(
        "assets/images/recommend5.png",
        height: media.height * 0.10,
        width: media.width * 0.43,
        fit: BoxFit.cover,
      ),
     ),
  ]
),
 Text(
  "Recent Viewed",
  style: GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Constants.buttonColor,
  ),
 ),
 SizedBox(
  height: media.height * 0.1, 
  child: ListView.builder(
    scrollDirection: Axis.horizontal, 
    itemCount: 5, 
    itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: media.width * 0.02),
        child: Container(
          height: media.height * 0.2,
          width: media.width * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Constants.placeholder,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              "assets/images/recent${index % 4 + 1}.png", 
              height: media.height * 0.2,
              width: media.width * 0.2,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    },
  ),
),
 SizedBox(height: media.height * 0.02),
 Row(
  children: [
   
       ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          "assets/images/home_tab.png",
          height: media.height * 0.05,
          fit: BoxFit.cover,
        ),
      ),
      Spacer(),
         ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          "assets/images/fav_tab.png",
          height: media.height * 0.05,
          fit: BoxFit.cover,
        ),
      ),
            Spacer(),
         ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          "assets/images/cart_tab.png",
          height: media.height * 0.05,
          fit: BoxFit.cover,
        ),
      ),
            Spacer(),
         ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          "assets/images/profile_tab.png",
          height: media.height * 0.05,
          fit: BoxFit.cover,
        ),
      ),
  ]
    ),

 
    
            ],
          ),
        ),
        
      ),
    );
  }
}
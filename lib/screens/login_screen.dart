import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_fresher/common_widget/round_button.dart';
import 'package:plants_fresher/common_widget/round_text_field.dart';
import 'package:plants_fresher/screens/register_screen.dart';
import 'package:plants_fresher/screens/splash_screen.dart';
import 'package:plants_fresher/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  final TextEditingController nameController = TextEditingController();
   final TextEditingController passwordController = TextEditingController();
  LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(

              children: [
                Image.asset(
                  'assets/images/login_plants.png',
                  height: media.height * 0.5,
                  width: media.width,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 16, right: 16,bottom: 5),
                  child: Text.rich(
                    TextSpan(
                      text: 'Welcome ',
                      style: GoogleFonts.meaCulpa(
                        fontSize: 55,
                        color: Constants.black,
                        fontWeight: FontWeight.w700,
                      ),
                      children: [
                        TextSpan(
                          text: 'Plants',
                          style: GoogleFonts.meaCulpa(
                            fontSize: 55,
                            color: Constants.primaryText,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                  child: Text(
                    'Login to your account',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Constants.secondaryText,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                  child: RoundTextfield(
                    controller: widget.nameController,
                    hintText: "Full Name",
                    icon: 'assets/images/user.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                  child: RoundTextfield(
                    controller: widget.passwordController,
                    hintText: "Password",
                    icon: 'assets/images/lock.png'),
                ),
            Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/check.png',
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Remember Me',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          // Handle forgot password
                        },
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Constants.primaryText,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20,top: 50),
                  child: RoundButton(onPressed: (){}, title: 'Sign In',fontSize: 22,),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  RegisterScreen(),
                            ),
                          );
                        },
                        child: Text(
                          '  Sign Up',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Constants.primaryText,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 40,
              left: 16,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SplashScreen(),
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundColor: Constants.placeholder,
                  child: Image.asset(
                    'assets/images/arrow_back.png',
                    height: 18,
                    width: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

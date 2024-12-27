import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_fresher/common_widget/round_button.dart';
import 'package:plants_fresher/common_widget/round_text_field.dart';
import 'package:plants_fresher/screens/home_screen.dart';
import 'package:plants_fresher/screens/login_screen.dart';
import 'package:plants_fresher/utils/constants.dart';

class RegisterScreen extends StatefulWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController emailController = TextEditingController();

  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: media.width * 0.05,
            vertical: media.height * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Arrow Back Button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
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
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/images/register_plants.png',
                  height: media.height * 0.32,
                  width: media.width * 0.6,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Text(
                  'Register',
                  style: GoogleFonts.poppins(
                    fontSize: 34,
                    color: Constants.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Create your new account',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Constants.secondaryText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: media.height * 0.02),
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
                    controller: widget.emailController,
                    hintText: "Email",
                    icon: 'assets/images/email.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                child: RoundTextfield(
                    controller: widget.passwordController,
                    hintText: "Password",
                    icon: 'assets/images/lock.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                child: RoundTextfield(
                    controller: widget.confirmPasswordController,
                    hintText: "Confirm Password",
                    icon: 'assets/images/lock.png'),
              ),

              Padding(
                padding: EdgeInsets.only(
                  left: media.width * 0.15,
                  right: media.width * 0.15,
                ),
                child: Text(
                  'By signing up, you agree to our\n   Terms & Conditions',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/images/plant_water.png',
                  height: media.height * 0.1,
                ),
              ),
                 Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20,top: 50),
                  child: RoundButton(
                    onPressed: (){
                      // NAViagte to home page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  HomeScreen(
                            
                          ),
                        ),
                      );
                    }, 
                    title: 'Sign Up',
                    fontSize: 22,),
                ),
                  Padding(
                  padding:  EdgeInsets.only(left: media.width * 0.01, right: 16, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
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
                              builder: (context) =>  LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          ' Login',
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
        ),
      ),
    );
  }
}

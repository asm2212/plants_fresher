import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_fresher/screens/login_screen.dart';
import 'package:plants_fresher/utils/constants.dart';

class RegisterScreen extends StatefulWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
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
            ],
          ),
        ),
      ),
    );
  }
}

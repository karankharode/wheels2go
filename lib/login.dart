import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_screen/otp_screen.dart';
import 'package:wheels2go/constants/colors.dart';
import 'package:wheels2go/details.dart';
import 'dart:async';

import 'package:wheels2go/showroom.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Wheels 2 Go",
                        style: GoogleFonts.muli(
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        style: GoogleFonts.muli(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email_outlined,
                              color: kPrimaryColor,
                              size: 26,
                            ),
                            hintText: "Enter Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        obscureText: true,
                        style: GoogleFonts.muli(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock_outline,
                              color: kPrimaryColor,
                              size: 26,
                            ),
                            hintText: "Enter Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Text(
                        "New User? Create Account. ",
                        style: GoogleFonts.muli(
                          color: kPrimaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => RegisterPage()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(kPrimaryColor),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => Showroom()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Login",
                          style: GoogleFonts.muli(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColorShadow,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Wheels 2 Go",
                      style: GoogleFonts.muli(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      style: GoogleFonts.muli(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.email_outlined,
                            color: kPrimaryColor,
                            size: 26,
                          ),
                          hintText: "Enter Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      obscureText: true,
                      style: GoogleFonts.muli(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock_outline,
                            color: kPrimaryColor,
                            size: 26,
                          ),
                          hintText: "Enter Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      obscureText: true,
                      style: GoogleFonts.muli(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock_outline,
                            color: kPrimaryColor,
                            size: 26,
                          ),
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kPrimaryColor),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              AfterSignUpPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.muli(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColorShadow,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ));
  }
}

class AfterSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Verify Phone Number",
                      style: GoogleFonts.muli(
                        color: kPrimaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.muli(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                      decoration: InputDecoration(
                        hintText: "Enter Phone Number",
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 180,
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(kPrimaryColor),
                      ),
                      child: Text(
                        "Send OTP",
                        style: GoogleFonts.muli(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColorShadow,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                PhoneVerification()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhoneVerification extends StatelessWidget {
  Future<String> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "1234") {
      return "Valid";
    } else {
      return "The entered Otp is wrong";
    }
  }

  void moveToNextScreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DetailsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpScreen(
          validateOtp: validateOtp,
          routeCallback: moveToNextScreen,
          themeColor: kPrimaryColor,
          titleColor: kPrimaryColor,
          title: "Phone Number Verification",
          subTitle: "Enter the code sent to your device"),
    );
  }
}

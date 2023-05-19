// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapisio/Screens/Authentication/GetStarted.dart';
import 'package:therapisio/Screens/Authentication/Signup(therapist).dart';
import 'package:therapisio/Screens/Authentication/forgot-password.dart';
import 'package:therapisio/Screens/Homepage%20&%20booking%20session/HomePage.dart';
import 'package:therapisio/Screens/onboarding/walkthrough.dart';
import 'package:therapisio/config/themes/stylesheet/sheet.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> with TickerProviderStateMixin {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late AnimationController _controller;
  bool isChecked = false;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    _controller.dispose();
    super.dispose();
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return ColorSet().primaryColor;
    }
    return ColorSet().backgroundColorShade1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Login',
                            style: GoogleFonts.josefinSans(
                                color: ColorSet().greyColorShade1),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Row(
                        children: [
                          Text(
                            'Welcome Back',
                            style: TextStyle(
                                fontSize: FontSet().titleLargeFS,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Text(
                            'Enter your credentials to access your account',
                            style: TextStyle(
                                color: ColorSet().greyColorShade1,
                                fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 23,
                      ),

                      Row(
                        children: [
                          Text(
                            'Email Address',
                            style: GoogleFonts.josefinSans(
                                color: ColorSet().blackColorShade1,
                                fontSize: FontSet().labelLargeFS,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      //email textformfield
                      TextFormField(
                        controller: emailController,
                        style: GoogleFonts.josefinSans(
                            fontWeight: FontWeight.w400,
                            fontSize: FontSet().lableSMallFS),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 16, right: 179, top: 12, bottom: 12),
                          filled: true,
                          fillColor: Color.fromARGB(227, 234, 240, 241),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 227, 241, 253)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: ColorSet().primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'Password',
                            style: GoogleFonts.josefinSans(
                                color: ColorSet().blackColorShade1,
                                fontSize: FontSet().labelLargeFS,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      //password textformfield
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        style: GoogleFonts.josefinSans(
                            fontWeight: FontWeight.w400,
                            fontSize: FontSet().lableSMallFS),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 16, right: 179, top: 12, bottom: 12),
                          filled: true,
                          fillColor: Color.fromARGB(227, 234, 240, 241),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 227, 241, 253)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: ColorSet().primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(height: 9),

                      //forgot password button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                            checkColor: ColorSet().blackColorShade1,
                          ),
                          Text(
                            'Remember me',
                            style: GoogleFonts.josefinSans(
                                color: ColorSet().primaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: FontSet().labelLargeFS),
                          ),
                          SizedBox(
                            width: 77,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  CupertinoPageRoute(builder: (context) {
                                return forgotPassword();
                              }));
                            },
                            child: Text(
                              'Forgot Password?',
                              style: GoogleFonts.josefinSans(
                                  color: ColorSet().primaryColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: FontSet().labelLargeFS),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          if (!emailController.text.endsWith('.com')) {
                            ToastMessage("inavlid email", context,
                                Color.fromARGB(169, 244, 67, 54), Colors.black);
                          } else if (!emailController.text.contains('@')) {
                            ToastMessage("inavlid email", context,
                                Color.fromARGB(169, 244, 67, 54), Colors.black);
                          } else {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Homepage();
                              },
                            ));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 7,
                            fixedSize: Size(320, 40),
                            backgroundColor: ColorSet().primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: Text(
                          "Login",
                          style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: FontSet().labelMediumFS),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'OR',
                              style: GoogleFonts.josefinSans(
                                  color: ColorSet().blackColorShade1,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          divider(),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     divider(),
                      //     Padding(
                      //       padding: const EdgeInsets.symmetric(horizontal: 10),
                      //       child: Text(
                      //         'OR',
                      //         style: TextStyle(
                      //             color: Colors.black38,
                      //             fontSize: 13,
                      //             fontWeight: FontWeight.bold),
                      //       ),
                      //     ),
                      //     divider(),
                      //   ],
                      // ),
                      SizedBox(
                        height: 16,
                      ),

                      //sign in with google outlined button
                      OutlinedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorSet().backgroundColorShade1,
                            elevation: 7,
                            fixedSize: Size(
                              320,
                              40,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/google.png",
                              width: 22,
                              height: 22,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              "Sign In With Google",
                              style: GoogleFonts.josefinSans(
                                  color: ColorSet().blackColorShade1,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      //sign in with Apple outlined button

                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have An Account?",
                            style: GoogleFonts.josefinSans(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignupTherapist();
                              }));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Sign Up',
                                style: GoogleFonts.josefinSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: ColorSet().primaryColor),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
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

class divider extends StatefulWidget {
  const divider({
    Key? key,
  }) : super(key: key);

  @override
  State<divider> createState() => _dividerState();
}

class _dividerState extends State<divider> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        thickness: .5,
        color: ColorSet().backgroundColorShade1,
      ),
    );
  }
}

ToastMessage(
    String message, BuildContext context, Color bgcolor, Color txtcolor) {
  Fluttertoast.showToast(
    timeInSecForIosWeb: 4,
    msg: message,
    textColor: txtcolor,
    backgroundColor: bgcolor,
    gravity: ToastGravity.BOTTOM,
  );
}

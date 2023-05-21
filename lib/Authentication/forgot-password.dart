// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapisio/Screens/Authentication/Otp-verification.dart';
import 'package:therapisio/Screens/Authentication/login.dart';

import '../../config/themes/stylesheet/sheet.dart';

class forgotPassword extends StatefulWidget {
  const forgotPassword({Key? key}) : super(key: key);

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  // Future passwordReset() async {
  //   try {
  //     await FirebaseAuth.instance.sendPasswordResetEmail(
  //         email: emailTextEditingController.text.trim());
  //     showDialog(
  //         context: context,
  //         builder: (context) {
  //           return AlertDialog(
  //             elevation: 10,
  //             backgroundColor: Colors.blue,
  //             titleTextStyle: TextStyle(color: Colors.blue),
  //             content: Text('password link has been send to your Email address',
  //                 style: TextStyle(color: Colors.white)),
  //             actions: [
  //               ElevatedButton(
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                   },
  //                   child: Text('Ok'))
  //             ],
  //           );
  //         });
  //   } on FirebaseException catch (e) {
  //     print(e);
  //     showDialog(
  //         context: context,
  //         builder: (context) {
  //           return AlertDialog(
  //             backgroundColor: Colors.blue,
  //             title: Text(
  //               'ERROR!',
  //               style: TextStyle(),
  //             ),
  //             content: Text(
  //               'Email Invalid or Incorrect',
  //               style: TextStyle(color: Colors.white),
  //             ),
  //             actions: [
  //               ElevatedButton(
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                   },
  //                   child: Text('Ok'))
  //             ],
  //           );
  //         });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(builder: ((context) {
                return login();
              })));
            },
            child: Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Image.asset(
                          'assets/images/forgotPassword.png',
                          width: 300,
                          height: 200,
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Forgot Password',
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Enter your email registered to your account.  If\nyour email is registered, you will recieve the link \nto reset your password.',
                          style: TextStyle(
                              color: ColorSet().greyColorShade1,
                              fontSize: FontSet().bodyMediumFS),
                        )
                      ],
                    ),
                    SizedBox(height: 88),
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
                    //password textformfield
                    TextFormField(
                      controller: emailController,
                      obscureText: true,
                      style: GoogleFonts.josefinSans(
                          fontWeight: FontWeight.w400,
                          fontSize: FontSet().lableSMallFS),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                            left: 18, right: 179, top: 12, bottom: 12),
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
                    SizedBox(height: 52),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return OtpScreen();
                          },
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 7,
                          fixedSize: Size(320, 40),
                          backgroundColor: ColorSet().primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text(
                        "Submit",
                        style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: FontSet().labelMediumFS),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

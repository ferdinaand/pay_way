// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:therapisio/Screens/Authentication/Reset-password.dart';
import 'package:therapisio/Screens/Authentication/forgot-password.dart';
import 'package:therapisio/Screens/Homepage%20&%20booking%20session/HomePage.dart';
import 'package:therapisio/config/themes/stylesheet/sheet.dart';

class OtpScreen extends StatefulWidget {
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  bool otpVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return forgotPassword();
              },
            ));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Image.asset(
                      'assets/images/otpImg.png',
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
                      textAlign: TextAlign.start,
                      "OTP Verification",
                      style: GoogleFonts.josefinSans(
                        fontSize: FontSet().titleLargeFS,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "We sent the verification code to your email.",
                      style: GoogleFonts.josefinSans(
                        fontSize: FontSet().bodyMediumFS,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 43,
                ),
                Visibility(
                    child: Pinput(
                      defaultPinTheme: PinTheme(
                        width: 40,
                        height: 50,
                        textStyle: TextStyle(
                            fontSize: FontSet().headlineMediumFS,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        decoration: BoxDecoration(
                          color: ColorSet().backgroundColorShade1,
                          border: Border.all(
                              color: ColorSet().backgroundColorShade1),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      focusedPinTheme: PinTheme(
                        width: 40,
                        height: 50,
                        textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        decoration: BoxDecoration(
                          color: ColorSet().backgroundColorShade1,
                          border: Border.all(color: ColorSet().primaryColor),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      submittedPinTheme: PinTheme(
                          width: 40,
                          height: 50,
                          textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorSet().backgroundColorShade1),
                            borderRadius: BorderRadius.circular(0),
                          )),
                      errorPinTheme: PinTheme(
                          width: 40,
                          height: 50,
                          textStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 249, 4, 4)),
                            borderRadius: BorderRadius.circular(0),
                          )),
                      controller: otpController,
                      length: 5,
                      keyboardType: TextInputType.number,
                    ),
                    visible: true),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Didn’t recieve any code?",
                      style: GoogleFonts.josefinSans(
                        color: ColorSet().greyColorShade1,
                        fontSize: FontSet().bodyMediumFS,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        textAlign: TextAlign.start,
                        " Resend",
                        style: GoogleFonts.josefinSans(
                          color: ColorSet().primaryColor,
                          fontSize: FontSet().bodyMediumFS,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 38,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fixedSize: Size(320, 40),
                      elevation: 10,
                      backgroundColor: ColorSet().primaryColor),
                  onPressed: () {
                    if (otpController.text.isEmpty) {
                      displayToastMessage("please enter your number", context,
                          3, 14, Colors.red, Colors.black);
                    } else {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ResetPassword();
                        },
                      ));
                    }
                  },
                  child: Text(
                    "submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: FontSet().labelMediumFS,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void loginPhoneo() async {
  //   auth.verifyPhoneNumber(
  //     phoneNumber: "+234${phoneController.text}",
  //     verificationCompleted: (PhoneAuthCredential credential) async {
  //       await auth.signInWithCredential(credential).then((value) {
  //         print("You are logged in successfully");
  //       });
  //     },
  //     verificationFailed: (FirebaseAuthException e) {
  //       displayToastMessage("Error: phone mumber invalid", context);
  //     },
  //     codeSent: (String verificationId, int? resendToken) {
  //       otpVisibility = true;
  //       verificationID = verificationId;
  //       setState(() {});
  //     },
  //     codeAutoRetrievalTimeout: (String verificationId) {},
  //   );
  // }

  // void verifyOTP() async {
  //   PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //       verificationId: verificationID, smsCode: otpController.text);

  //   await auth.signInWithCredential(credential).then(
  //     (value) {
  //       setState(() {
  //         user = FirebaseAuth.instance.currentUser;
  //       });
  //     },
  //   ).whenComplete(
  //     () {
  //       if (user != null) {
  //         Fluttertoast.showToast(
  //           msg: "Your phoneNo was verified successfully",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.BOTTOM,
  //           timeInSecForIosWeb: 1,
  //           backgroundColor: Colors.red,
  //           textColor: Colors.white,
  //           fontSize: 16.0,
  //         );
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => homePage(),
  //           ),
  //         );
  //       } else {
  //         Fluttertoast.showToast(
  //           msg: "Your phoneNo wasn't verified successfully",
  //           toastLength: Toast.LENGTH_SHORT,
  //           gravity: ToastGravity.BOTTOM,
  //           timeInSecForIosWeb: 1,
  //           backgroundColor: Colors.red,
  //           textColor: Colors.white,
  //           fontSize: 16.0,
  //         );
  //       }
  //     },
  //   );
  // }
}

displayToastMessage(String message, BuildContext context, int time,
    double ftSize, Color bgcolor, Color txtColor) {
  Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: time,
      backgroundColor: bgcolor,
      textColor: txtColor,
      fontSize: ftSize);
}

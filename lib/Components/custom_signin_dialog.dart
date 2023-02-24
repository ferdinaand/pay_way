import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SingInForm.dart';

Future<Object?> CustomSignInDialog(BuildContext context,
    {required ValueChanged onClosed}) {
  return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "sign in",
      context: context,
      transitionDuration: Duration(milliseconds: 400),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        Tween<Offset> tween;

        tween = Tween(begin: Offset(0, -1), end: Offset.zero);
        return SlideTransition(
          position: tween.animate(
              CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
          child: child,
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) => Center(
            child: Container(
              height: 620,
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(40)),
              child: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.transparent,
                body: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            'Sign In',
                            style: GoogleFonts.poppins(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              'Make payments to 2500+ merchants nationwide, and experience the blazing speed of instant credit',
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SignInForm(),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                color: Color.fromARGB(20, 0, 0, 0),
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  'OR',
                                  style: GoogleFonts.poppins(
                                      color: Colors.black26),
                                ),
                              ),
                              Expanded(
                                  child: Divider(
                                      color: Color.fromARGB(20, 0, 0, 0)))
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              'Sign up with Email, Apple or Google',
                              style: GoogleFonts.poppins(color: Colors.black54),
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: IconButton(
                                      style: ButtonStyle(
                                        side: MaterialStateProperty.resolveWith(
                                            (states) {
                                          // If the button is pressed, return green, otherwise blue
                                          if (states.contains(
                                              MaterialState.pressed)) {
                                            return BorderSide(
                                                width: 0.3,
                                                color: Color(0xff599B3C));
                                          }
                                          return BorderSide(
                                              color: Colors.black);
                                        }),
                                        backgroundColor:
                                            MaterialStateProperty.resolveWith(
                                                (states) {
                                          // If the button is pressed, return green, otherwise blue
                                          if (states.contains(
                                              MaterialState.pressed)) {
                                            return Color(0xff599B3C);
                                          }
                                          return Colors.black12;
                                        }),
                                      ),
                                      onPressed: () {},
                                      icon: Image.asset(
                                          width: 25,
                                          height: 25,
                                          'assets/icons/mail_logo.png')),
                                ),
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: IconButton(
                                      style: ButtonStyle(
                                        side: MaterialStateProperty.resolveWith(
                                            (states) {
                                          // If the button is pressed, return green, otherwise blue
                                          if (states.contains(
                                              MaterialState.pressed)) {
                                            return BorderSide(
                                                width: 0.3,
                                                color: Color(0xff599B3C));
                                          }
                                          return BorderSide(
                                              color: Colors.black);
                                        }),
                                        backgroundColor:
                                            MaterialStateProperty.resolveWith(
                                                (states) {
                                          // If the button is pressed, return green, otherwise blue
                                          if (states.contains(
                                              MaterialState.pressed)) {
                                            return Color(0xff599B3C);
                                          }
                                          return Colors.black12;
                                        }),
                                      ),
                                      onPressed: () {},
                                      icon: Image.asset(
                                          width: 25,
                                          height: 25,
                                          'assets/icons/apple_logo.png')),
                                ),
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: IconButton(
                                      style: ButtonStyle(
                                        side: MaterialStateProperty.resolveWith(
                                            (states) {
                                          // If the button is pressed, return green, otherwise blue
                                          if (states.contains(
                                              MaterialState.pressed)) {
                                            return BorderSide(
                                                width: 0.3,
                                                color: Color(0xff599B3C));
                                          }
                                          return BorderSide(
                                              color: Colors.black);
                                        }),
                                        backgroundColor:
                                            MaterialStateProperty.resolveWith(
                                                (states) {
                                          // If the button is pressed, return green, otherwise blue
                                          if (states.contains(
                                              MaterialState.pressed)) {
                                            return Color(0xff599B3C);
                                          }
                                          return Colors.black12;
                                        }),
                                      ),
                                      onPressed: () {},
                                      icon: Image.asset(
                                          width: 25,
                                          height: 25,
                                          'assets/icons/google_logo.png')),
                                ),
                              ])
                        ],
                      ),
                    ),
                    Positioned(
                        left: 0,
                        right: 0,
                        bottom: -48,
                        child: CircleAvatar(
                            child: Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                            backgroundColor: Colors.white.withOpacity(0.9),
                            radius: 16))
                  ],
                ),
              ),
            ),
          )).then(onClosed);
}

// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rive/rive.dart';

import '../Components/Widgets.dart';
import '../Components/custom_signin_dialog.dart';
import 'homescreen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  // This widget is the root of your application.
  bool isDialogShown = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const RiveAnimation.asset(
            'assets/rive_assets/shapes.riv',
            fit: BoxFit.cover,
          ),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: const SizedBox(),
          )),
          AnimatedPositioned(
            curve: Curves.easeInOut,
            top: isDialogShown ? -50 : 0,
            duration: Duration(milliseconds: 600),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  SizedBox(
                    width: 260,
                    child: Column(
                      children: [
                        Text(
                          'Loren desnon \n& Core',
                          style: GoogleFonts.poppins(
                              fontSize: 60,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Make payments to several merchants nationwide, and experience the blazing speed of instant credit ',
                          style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: Colors.white60),
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  AnimatedButton(
                    press: () {
                      setState(() {
                        isDialogShown = true;
                      });
                      CustomSignInDialog(context, onClosed: (_) {
                        setState(() {
                          isDialogShown = false;
                        });
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text(
                      '*Experience the blazing speed of instant credit and debit, from the palm of your hand.*',
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white54),
                    ),
                  ),
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}

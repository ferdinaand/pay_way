// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapisio/Screens/Authentication/Signup(client).dart';
import 'package:therapisio/Screens/Authentication/Signup(therapist).dart';
import 'package:therapisio/config/themes/stylesheet/sheet.dart';

class gettingStarted extends StatefulWidget {
  gettingStarted({Key? key}) : super(key: key);

  @override
  State<gettingStarted> createState() => _gettingStartedState();
}

class _gettingStartedState extends State<gettingStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: ColorSet().whiteColors,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage(
                              "assets/images/Ellipse12.png",
                            ),
                          ),
                          SizedBox(
                            width: 216,
                          ),
                          Text(
                            "Getting started",
                            style: GoogleFonts.josefinSans(
                                fontSize: FontSet().lableSMallFS),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 40,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Get Started",
                                  style: GoogleFonts.josefinSans(
                                      fontSize: FontSet().titleLargeFS,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text("Start by choosing your role.",
                                    style: GoogleFonts.josefinSans(
                                        fontSize: FontSet().titleSmallFS,
                                        fontWeight: FontWeight.w400)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, CupertinoPageRoute(
                          builder: (context) {
                            return SignupClient();
                          },
                        ));
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 30.0,
                            top: 30,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 16,
                                    backgroundImage: AssetImage(
                                        "assets/images/MentalHealth.png"),
                                    foregroundColor: Colors.transparent,
                                    backgroundColor: Colors.transparent,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("I’m a Client"),
                                  Icon(Icons.arrow_forward_ios)
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "I want to get help and guidance \nfrom expert therapists.",
                                    style: GoogleFonts.josefinSans(
                                        color: ColorSet().greyColorShade2),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        height: 170,
                        width: 350,
                        decoration: BoxDecoration(
                            color: ColorSet().backgroundColorShade1,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, CupertinoPageRoute(
                          builder: (context) {
                            return SignupTherapist();
                          },
                        ));
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 30),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 16,
                                    backgroundImage: AssetImage(
                                        "assets/images/Counselor.png"),
                                    foregroundColor: Colors.transparent,
                                    backgroundColor: Colors.transparent,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("I’m a Therapist"),
                                  Icon(Icons.arrow_forward_ios)
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                      "I want to get help and guidance \nfrom expert therapists.",
                                      style: GoogleFonts.josefinSans(
                                          color: ColorSet().greyColorShade2)),
                                ],
                              )
                            ],
                          ),
                        ),
                        height: 170,
                        width: 350,
                        decoration: BoxDecoration(
                            color: ColorSet().backgroundColorShade1,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 96,
            bottom: 10,
            left: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text("Need Help?",
                        style: GoogleFonts.josefinSans(
                            color: ColorSet().greyColorShade1)))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/homescreen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  double radius = 15;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: TextStyle(color: Colors.black54),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              height: 55,
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white60,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(radius),
                          bottomLeft: Radius.circular(radius),
                          bottomRight: Radius.circular(0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(radius),
                            bottomLeft: Radius.circular(radius),
                            bottomRight: Radius.circular(0)),
                        borderSide: BorderSide(color: Color(0xff599B3C))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(radius),
                            bottomLeft: Radius.circular(radius),
                            bottomRight: Radius.circular(0)),
                        borderSide:
                            BorderSide(color: Color.fromARGB(71, 72, 72, 72))),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Color(0xff599B3C),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Password',
            style: TextStyle(color: Colors.black54),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              height: 55,
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white60,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(radius),
                          bottomLeft: Radius.circular(radius),
                          bottomRight: Radius.circular(0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(radius),
                            bottomLeft: Radius.circular(radius),
                            bottomRight: Radius.circular(0)),
                        borderSide: BorderSide(color: Color(0xff599B3C))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(radius),
                            bottomLeft: Radius.circular(radius),
                            bottomRight: Radius.circular(0)),
                        borderSide:
                            BorderSide(color: Color.fromARGB(71, 72, 72, 72))),
                    prefixIcon: Icon(
                      Icons.key_outlined,
                      color: Color(0xff599B3C),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 295,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => Home(), transition: Transition.upToDown);
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        backgroundColor: Color.fromARGB(61, 80, 80, 80)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign In',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff599B3C),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SingInForm.dart';

class AnimatedButton extends StatelessWidget {
  const AnimatedButton({
    super.key,
    required this.press,
  });

  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 200,
          child: ElevatedButton(
              onPressed: press,
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  backgroundColor: Color.fromARGB(61, 80, 80, 80)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.arrow_forward,
                    color: Color.fromARGB(255, 33, 80, 13),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff599B3C),
                    ),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}

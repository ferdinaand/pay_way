// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//EXTRAS CATEGORY CONTAINER
class ExtrasContainer extends StatelessWidget {
  const ExtrasContainer(
      {super.key, required this.iconPath, required this.text});

  final String iconPath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 180,
      decoration: BoxDecoration(
          color: const Color.fromARGB(18, 255, 255, 255),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              iconPath,
              height: 50,
              width: 50,
            ),
            const SizedBox(height: 20),
            Text(
              text,
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}

//USER CONTAINER
class UserContainer extends StatelessWidget {
  const UserContainer(
      {super.key,
      required this.iconPath,
      required this.UsernameText,
      required this.NotifyText});

  final String iconPath;
  final String UsernameText;
  final String NotifyText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xff599B3C), Color(0xff90BC7D), Color(0xffB1C143)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.only(left: 0, top: 0, right: 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        UsernameText,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        NotifyText,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xff3B6728)),
                    child: Center(
                      child: Image.asset(
                        iconPath,
                        height: 55,
                        width: 55,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 20, top: 40, right: 25),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        CurrencyContainer(
                            iconPath: 'assets/icons/NGN.png', currency: "NGN")
                      ],
                    ),
                    const AccountBal(balanceValue: '57,550'),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ItemContainer(text: "Request"),
                  ItemContainer(text: "Send"),
                  ItemContainer(text: "FundRaise"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//   ITEM CONTAINER
class ItemContainer extends StatelessWidget {
  const ItemContainer({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Container(
        height: 100,
        width: 105,
        decoration: BoxDecoration(
            color: const Color(0xff606A20),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.only(left: 0, top: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// CURRENCY CONTAINER
class CurrencyContainer extends StatelessWidget {
  const CurrencyContainer(
      {super.key, required this.iconPath, required this.currency});

  final String iconPath;
  final String currency;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
          color: const Color.fromARGB(151, 1, 1, 1),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.only(left: 3, top: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currency,
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 5,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 20,
                width: 20,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(60)),
                child:
                    Transform.scale(scale: 1.4, child: Image.asset(iconPath)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//ACCOUNT BALANCE
class AccountBal extends StatelessWidget {
  const AccountBal({super.key, required this.balanceValue});

  final String balanceValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            balanceValue,
            style: GoogleFonts.poppins(
                fontSize: 50, color: Colors.black, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}

//LATEST TRANSACTION CARD
class LatestTransactionCard extends StatelessWidget {
  const LatestTransactionCard(
      {super.key,
      required this.iconPath,
      required this.transactionAmount,
      required this.transactionType,
      required this.transactionName,
      required this.transactionDate});

  final String iconPath;
  final String transactionAmount;
  final String transactionDate;
  final String transactionType;
  final String transactionName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(78, 58, 58, 58),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        gradient: const RadialGradient(colors: [
                          Color.fromARGB(84, 76, 175, 79),
                          Color.fromARGB(29, 33, 149, 243)
                        ]),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.asset(height: 10, width: 10, iconPath),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactionName,
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        transactionType,
                        style: GoogleFonts.poppins(
                            fontSize: 13, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        transactionDate,
                        style: GoogleFonts.poppins(
                            color: Colors.white38,
                            fontSize: 11,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                transactionAmount,
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//SECTION HEADER
class SectionHeader extends StatelessWidget {
  const SectionHeader(
      {super.key, required this.sectionText, required this.sectionIcon});

  final String sectionText;
  final IconData sectionIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 20, top: 10, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectionText,
            style:
                GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          IconButton(
            icon: Icon(sectionIcon),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

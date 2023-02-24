import 'package:flutter/material.dart';

import '../Components/home_screen_components/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                children: const [
                  ExtrasContainer(
                    iconPath: 'assets/icons/beach.png',
                    text: 'Entertainment &\ntravelling',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ExtrasContainer(
                    iconPath: 'assets/icons/tennis_ball.png',
                    text: 'Activities &\nsports',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const UserContainer(
                  iconPath: 'assets/avatar/girl.png',
                  UsernameText: "Hello, Ferdinand!",
                  NotifyText: "Activate your new card"),
              const SizedBox(
                height: 20,
              ),
              const SectionHeader(
                  sectionText: 'Latest Transaction',
                  sectionIcon: Icons.more_vert),
              const LatestTransactionCard(
                iconPath: "assets/icons/spotify.png",
                transactionAmount: '- N1000',
                transactionDate: '24.02.23',
                transactionName: 'spotify',
                transactionType: 'Monthly Payment',
              ),
              const SizedBox(
                height: 10,
              ),
              const LatestTransactionCard(
                iconPath: "assets/icons/youtube.png",
                transactionAmount: '- N1000',
                transactionDate: '24.02.23',
                transactionName: 'Youtube',
                transactionType: 'Youtube premuim',
              ),
              const SizedBox(
                height: 10,
              ),
              const LatestTransactionCard(
                iconPath: "assets/icons/netflix.png",
                transactionAmount: '- N2500',
                transactionDate: '24.02.23',
                transactionName: 'Netflix',
                transactionType: 'Monthly Payment',
              ),
              const SizedBox(
                height: 10,
              ),
              const LatestTransactionCard(
                iconPath: "assets/icons/playstore.png",
                transactionAmount: '- N5000',
                transactionDate: '24.02.23',
                transactionName: 'playstore',
                transactionType: 'COD points',
              ),
              const SizedBox(
                height: 10,
              ),
              const LatestTransactionCard(
                iconPath: "assets/icons/dribbble.png",
                transactionAmount: '- N4000',
                transactionDate: '24.02.23',
                transactionName: 'dribbble',
                transactionType: 'Monthly Payment',
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

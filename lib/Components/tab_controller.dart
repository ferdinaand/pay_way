// import 'package:flutter/material.dart';


// class Dashboard extends StatefulWidget {
//   Dashboard({Key? key}) : super(key: key);

//   @override
//   State<Dashboard> createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard>
//     with SingleTickerProviderStateMixin {
//   late TabController tabController;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     tabController = TabController(length: 4, vsync: this);
//   }

//   int selectedIndex = 0;

//   void onItemClicked(int index) {
//     setState(() {
//       selectedIndex = index;
//       tabController.index = selectedIndex;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: TabBarView(
//             physics: NeverScrollableScrollPhysics(),
//             controller: tabController,
//             children: [Homepage(), explore(), community(), sessions()]),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home,
//             ),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.explore,
//             ),
//             label: "explore",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.groups,
//             ),
//             label: "community",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.textsms,
//             ),
//             label: "sessions",
//           )
//         ],
//         unselectedIconTheme: IconThemeData(
//           size: 20,
//           color: ColorSet().greyColorShade2,
//         ),
//         selectedIconTheme: IconThemeData(
//           size: 20,
//           color: ColorSet().primaryColor,
//         ),
//         selectedLabelStyle: GoogleFonts.josefinSans(
//             color: ColorSet().primaryColor,
//             fontSize: FontSet().lableSMallFS,
//             fontWeight: fontWeight().Fweight),
//         unselectedLabelStyle: GoogleFonts.josefinSans(
//             color: ColorSet().greyColorShade2,
//             fontSize: FontSet().lableSMallFS,
//             fontWeight: fontWeight().Fweight),
//         showUnselectedLabels: true,
//         selectedItemColor: ColorSet().primaryColor,
//         unselectedItemColor: ColorSet().greyColorShade2,
//         showSelectedLabels: true,
//         currentIndex: selectedIndex,
//         onTap: onItemClicked,
//         elevation: 10,
//         type: BottomNavigationBarType.shifting,
//       ),
//     );
//   }
// }

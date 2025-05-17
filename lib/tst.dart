// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:newapp/presentation/newspage/newa.dart';
// import 'package:newapp/presentation/home_screen/prof.dart';
//
// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }
//
// class _MainScreenState extends State<MainScreen> {
//   int _bottomNavIndex = 0;
//
//   final iconList = <IconData>[
//     Icons.article, // News
//     Icons.person, // Profile
//   ];
//
//   final List<Widget> _screens = [
//     NewsApp(),
//     ProfileApp(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.orange,
//               ),
//               child: Text(
//                 'Menu',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//               onTap: () {
//                 Navigator.pop(context);
//                 setState(() => _bottomNavIndex = 0);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text('Profile'),
//               onTap: () {
//                 Navigator.pop(context);
//                 setState(() => _bottomNavIndex = 1);
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.logout),
//               title: Text('Logout'),
//               onTap: () {
//                 // Add your logout logic here
//               },
//             ),
//           ],
//         ),
//       ),
//       body: _screens[_bottomNavIndex],
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Action when the center button is pressed
//         },
//         backgroundColor: Colors.orange,
//         child: Image.asset(
//           'assets/icons/creditcard.png', // Make sure this path is correct
//           width: 28,
//           height: 28,
//           color: Colors.white, // Optional: applies a color overlay if image is single-tone
//         ),
//
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: AnimatedBottomNavigationBar.builder(
//         itemCount: iconList.length,
//         tabBuilder: (index, isActive) =>
//             Icon(
//               iconList[index],
//               size: 24,
//               color: isActive ? Colors.orange : Colors.grey,
//             ),
//         activeIndex: _bottomNavIndex,
//         gapLocation: GapLocation.center,
//         notchSmoothness: NotchSmoothness.verySmoothEdge,
//         leftCornerRadius: 32,
//         rightCornerRadius: 32,
//         onTap: (index) => setState(() => _bottomNavIndex = index),
//       ),
//     );
//   }
// }
//
// // Dummy color class – replace with your own logic or Color values
// class _NavColors {
//   final Color activeNavigationBarColor = Colors.blue;
//   final Color notActiveNavigationBarColor = Colors.grey;
// }
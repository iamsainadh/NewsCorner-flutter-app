// import 'package:flutter/material.dart';
// import 'package:newscorner/constants.dart';

// class BottomNavyBar extends StatefulWidget {
//   const BottomNavyBar({super.key});

//   @override
//   State<BottomNavyBar> createState() => _BottomNavyBarState();
// }

// class _BottomNavyBarState extends State<BottomNavyBar> {
//   int _index = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[_index],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _index,
//         onTap: (value) {
//           setState(() {
//             _index = value;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home_outlined,
//               ),
//               backgroundColor: Colors.blue,
//               label: "Home"),
//           BottomNavigationBarItem(
//               backgroundColor: Colors.green,
//               icon: Icon(Icons.category_outlined),
//               label: "Category"),
//           BottomNavigationBarItem(
//               backgroundColor: Colors.red,
//               icon: Icon(Icons.bookmark_outline),
//               label: "Bookmark"),
//           BottomNavigationBarItem(
//               backgroundColor: Colors.pink,
//               icon: Icon(Icons.settings_outlined),
//               label: "Settings")
//         ],
//       ),
//     );
//   }
// }

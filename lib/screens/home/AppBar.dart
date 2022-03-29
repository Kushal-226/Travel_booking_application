// import 'package:authentification/config/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:authentification/screens/home/HomePage.dart';

// class Appbar extends StatefulWidget {
//   @override
//   _AppbarState createState() => _AppbarState();
// }

// class _AppbarState extends State<AppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title:
//           // Text("Home", style: TextStyle(color: Colors.white, fontSize: 17)),
//           InkWell(
//         onTap: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => HomePage()));
//         },
//         child: new Padding(
//           padding: new EdgeInsets.all(10.0),
//           child: new Text("Home"),
//         ),
//       ),
//       actions: [
//         CircleAvatar(
//           child: Icon(Icons.search, size: 20, color: Colors.white),
//           radius: 15,
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 5),
//           child: CircleAvatar(
//             child:
//                 Icon(Icons.shopping_bag_rounded, size: 20, color: Colors.white),
//             radius: 15,
//           ),
//         ),
//       ],
//       backgroundColor: primaryColor,
//     );
//   }
// }

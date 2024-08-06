// import 'package:flutter/material.dart';
// import 'package:google_auth/pages/auth.dart';

// import 'package:provider/provider.dart';

// class googleAuth extends StatefulWidget {
//   const googleAuth({super.key});

//   @override
//   State<googleAuth> createState() => _googleAuthState();
// }

// class _googleAuthState extends State<googleAuth> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Auth Demo"),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 10,
//           ),
//           Center(
//               child: ElevatedButton(
//                   onPressed: () {
//                     AuthMethods().signInwithGoogle(context);
//                   },
//                   child: Text("Sign Up with Google"))),
//           SizedBox(
//             height: 10,
//           ),
//           Center(
//               child: ElevatedButton(
//                   onPressed: () {}, child: Text("Sign Up with Apple"))),
//         ],
//       ),
//     );
//   }
// }

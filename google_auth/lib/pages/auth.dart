// import "package:firebase_auth/firebase_auth.dart";
// import "package:flutter/material.dart";
// import "package:google_auth/pages/database.dart";
// import "package:google_auth/pages/homepage.dart";
// import "package:google_sign_in/google_sign_in.dart";
// import "database.dart";
// import "package:sign_in_with_apple/sign_in_with_apple.dart";

// class AuthMethods {
//   final FirebaseAuth auth = FirebaseAuth.instance;
//   getCurrentuser() async {
//     return await auth.currentUser;
//   }

//   signInwithGoogle(BuildContext contex) async {
//     final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//     final GoogleSignIn googleSignIn = GoogleSignIn();

//     final GoogleSignInAccount? googleSignInAccount =
//         await googleSignIn.signIn();

//     final GoogleSignInAuthentication? googleSignInAuthentication =
//         await googleSignInAccount?.authentication;

//     final AuthCredential credential = GoogleAuthProvider.credential(
//         idToken: googleSignInAuthentication?.idToken,
//         accessToken: googleSignInAuthentication?.accessToken);

//     UserCredential result = await firebaseAuth.signInWithCredential(credential);

//     User? userDetails = result.user;
//     if (result != null) {
//       Map<String, dynamic> userInfoMap = {
//         "email": userDetails!.email,
//         "name": userDetails.displayName,
//         "imgUrl": userDetails.photoURL,
//         "id": userDetails.uid,
//       };

//       DatabaseMethod().addUser(userDetails.uid, userInfoMap).then((value) {
//         Navigator.push(
//             contex,
//             MaterialPageRoute(
//               builder: (context) => Homepage(),
//             ));
//       });
//     }
//   }

// Future<User> signWithApple({List<Scope> scopes= const[]}) async{
//   final result = await 
// }


  
// }



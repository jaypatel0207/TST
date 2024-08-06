import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:google_auth/PhoneAuth/login.dart";
import "package:google_auth/pages/homepage.dart";


class wrapper extends StatefulWidget {
  const wrapper({super.key});

  @override
  State<wrapper> createState() => _wrapperState();
}

class _wrapperState extends State<wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Homepage();
          } else {
            return PhoneHome();
          }
        },
      ),
    );
  }
}

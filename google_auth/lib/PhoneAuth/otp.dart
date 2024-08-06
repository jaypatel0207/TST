import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_auth/PhoneAuth/wrapper.dart';

import 'package:pinput/pinput.dart';

// ignore: must_be_immutable
class OtpPage extends StatefulWidget {
  String? vid;
//  String? phonenumber;
  OtpPage({
    required this.vid,
    // required this.phonenumber,
  });

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  var code = "";
  final user = FirebaseAuth.instance.currentUser;

  signIn() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.vid!, smsCode: code);

    try {
      await FirebaseAuth.instance
          .signInWithCredential(credential)
          .then((value) => Get.offAll(wrapper()));
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error Occured", e.code);
    } catch (e) {
      Get.snackbar("Error Occured", e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Text(
              "OTP Verification,",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
            child: Text(
              "Enter OTP sent to +91 ",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Pinput(
                length: 6,
                onChanged: (value) {
                  setState(() {
                    code = value;
                  });
                },
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                signIn();
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => Homepage(),
                //     ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(140, 178, 241, 1),
                  padding: EdgeInsets.all(16)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Text(
                  "Verify & Proceed",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}

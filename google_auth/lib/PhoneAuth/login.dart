import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_auth/PhoneAuth/otp.dart';



class PhoneHome extends StatefulWidget {
  const PhoneHome({super.key});

  @override
  State<PhoneHome> createState() => _PhoneHomeState();
}

class _PhoneHomeState extends State<PhoneHome> {
  TextEditingController _phonecontroller = TextEditingController();
  
  sendcode() async {
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: '+91' + _phonecontroller.text,
          verificationCompleted: (PhoneAuthCredential credential) {},
          verificationFailed: (FirebaseAuthException e) {
            Get.snackbar("Error Occured", e.code);
          },
          codeSent: (String? vid, int? token) {},
          codeAutoRetrievalTimeout: (vid) {});
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
            "Your Phone",
            style: TextStyle(fontSize: 30),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
            child: Text(
                "We will send you an one time password on this mobile number"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              controller: _phonecontroller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  prefix: Text("+91"),
                  prefixIcon: Icon(Icons.phone),
                  labelText: "Enter Phone Number",
                  hintStyle: TextStyle(color: Colors.grey),
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue))),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                sendcode();
                var vid;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpPage(
                        vid: vid,
                      ),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(90, 208, 248, 1.0),
                  padding: EdgeInsets.all(16.0)),
              child: Text(
                "Receive OTP",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}


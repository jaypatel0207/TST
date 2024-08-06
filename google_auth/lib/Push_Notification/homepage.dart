import 'package:flutter/material.dart';
import 'package:google_auth/Push_Notification/messaging.dart';

class myhomepage extends StatefulWidget {
  const myhomepage({super.key});

  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  final _messagingService = MessagingService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Text("welcome"),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _messagingService.init(context);
    
  }
}

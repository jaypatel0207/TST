import 'package:flutter/material.dart';
import 'package:flutter_splash_screens/navigation%20bar/type1/nav_model.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final searchNavKey = GlobalKey<NavigatorState>();
  final notificationNavKey = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();

  int selectedTab = 0;
  List<NavModel> items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items = [
      // NavModel(page: TabPage(tab: 1), navKey: homeNavKey),
      // NavModel(page: TabPage(tab: 2), navKey: searchNavKey),
      // NavModel(page: TabPage(tab: 3), navKey: notificationNavKey),
      // NavModel(page: TabPage(tab: 4), navKey: profileNavKey)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

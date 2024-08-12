import 'package:flutter/material.dart';

class Home3 extends StatefulWidget {
  const Home3({super.key});

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  List<IconData> navIcons = [Icons.home, Icons.wallet, Icons.person];

  List<String> navTitle = ["Home", "Wallet", "Account"];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Floating Bottom NavBar Flutter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 40,
            itemBuilder: (context, index) {
              return ListTile(
                title:  Text("title $index"),
              );
            },
          ),

          Align(alignment:Alignment.bottomCenter, child:  _navBar())
        ],
      ),
    );
  }

  Widget _navBar() {
    return Container(
      height: 65,
      margin: EdgeInsets.only(right: 24, left: 24, bottom: 24),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withAlpha(20),
                blurRadius: 20,
                spreadRadius: 10)
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            // children: navIcons.map((icon){
              
            //   return Material(
            //     color: Colors.transparent,
            //     child: Column(
            //       children: [
                    
            //       ],
            //     ),
            //   )
            // })

            
          ),
    );
  }
}

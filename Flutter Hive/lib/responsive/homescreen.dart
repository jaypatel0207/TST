import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class myhomescreen extends StatefulWidget {
  const myhomescreen({super.key});

  @override
  State<myhomescreen> createState() => _myhomescreenState();
}

class _myhomescreenState extends State<myhomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
         
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Welcome !!!!!",style: TextStyle(color: Colors.blue),),
            ), 



            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Please Enter Your Name",
                  labelText: "Name", 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), 
                    
                  ) 
                ),
              ),
            ), 


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Please Enter Your Number",
                  labelText: "Number", 
                  
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), 
                    
                  ) 
                ),
              ),
            ), 

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Please Enter Your Email",
                  labelText: "Email", 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10), 
                    
                  ) 
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

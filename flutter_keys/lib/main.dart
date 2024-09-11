import 'package:flutter/material.dart';
import 'package:flutter_keys/Global%20Key/E1.dart';
import 'package:flutter_keys/Global%20Key/E2.dart';
import 'package:flutter_keys/Global%20Key/E3.dart';
import 'package:flutter_keys/Global%20Key/E4.dart';
import 'package:flutter_keys/Global%20Key/E5.dart';
import 'package:flutter_keys/Global%20Key/GlobalKey.dart';
import 'package:flutter_keys/Unique%20Key/E11.dart';
import 'package:flutter_keys/Unique%20Key/E12.dart';
import 'package:flutter_keys/Unique%20Key/E13.dart';
import 'package:flutter_keys/Unique%20Key/E14.dart';
import 'package:flutter_keys/Unique%20Key/UniqueKey.dart';
import 'package:flutter_keys/Value%20Key/E22.dart';
import 'package:flutter_keys/Value%20Key/E24.dart';
import 'package:flutter_keys/Value%20Key/ValueKey.dart';
import 'package:flutter_keys/Value%20Key/e21.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
      home:  E24(),
    );
  }
}


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthpro/dashboard.dart';


void main() {
  runApp(const MyApp());

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFA8784EF), // navigation bar color
    statusBarColor: Color(0x1F1E1EFF), // status bar color
  ));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/starthome.jpg'),
            fit: BoxFit.fill),
      ),
    );
  }
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(
          builder: (context) =>const DashBoard()
        )
       );
      }
    );
  }
}
//imam
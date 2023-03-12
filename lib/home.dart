import 'dart:math' as math;

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var color;
  getColors(){
    setState(() {
      color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  void initState() {
    getColors();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          getColors();
        },
        child: Container(
          height: height,
          width: width,
          color: color,
          child: const Center(
            child: Text("Hello there",style: TextStyle(fontSize: 30),),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sollution_challenge/complainbox.dart';

class ComplainePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: 
      AppBar(
        title: Text('Complain Page'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body:  ComplainBox()
      )
    );
  }
}
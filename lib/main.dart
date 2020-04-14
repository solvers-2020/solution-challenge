import 'package:flutter/material.dart';
import 'package:sollution_challenge/ProfilePage.dart';
import 'package:sollution_challenge/StatusPage.dart';
import 'package:sollution_challenge/complinePage.dart';

void main(){
  runApp(MainPage());
}

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 1;

  final tabs = [
    StatusPage(),
    ComplainePage(),
    ProfilePage()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        selectedFontSize: 20,
      items: [
        
        BottomNavigationBarItem(icon: Icon(Icons.group_work),
        title: Text('STATUS'),
        backgroundColor: Colors.yellow[400]
        ),
        BottomNavigationBarItem(icon: Icon(Icons.camera),
        title: Text('COMPLAIN'),
        backgroundColor: Colors.greenAccent
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person),
        title: Text('PROFILE'),
        backgroundColor: Colors.lightBlueAccent
        ),

      ],
      onTap: (index){
        setState(() {
          _currentIndex= index;
        });
      },
      )
    );
  }
}
import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:phonebook/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
        return const HomePage();
      }),(route)=>false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        color: Colors.blue,
        child: Center(
          child: Column(
            children: const [
              Text('Note Book'),
              Text('Ami 2nd Text'),
              Text('Update and push'),
            ],
          ),
        ),
      ),
    );
  }
}

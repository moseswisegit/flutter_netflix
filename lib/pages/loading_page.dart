import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_netflix/pages/home_page.dart';
import 'package:flutter_netflix/pages/onboarding_page.dart';
import 'package:lottie/lottie.dart';

class MyLoadingPage extends StatefulWidget {
  const MyLoadingPage({super.key, required this.title});

  final String title;

  @override
  State<MyLoadingPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLoadingPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    loadAnimation();
  }

  Future<Timer> loadAnimation() async {
    return Timer(const Duration(seconds: 3), onLoaded);
  }

  onLoaded() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Lottie.asset("assets/lotties/netflix.json", repeat: false)),
    );
  }
}

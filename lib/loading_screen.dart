import 'dart:async';
import 'package:flutter/material.dart';



class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() { 
    super.initState();
    loadData().then((_){
      Timer(const Duration(seconds: 5),(){
        Navigator.pushReplacementNamed(context, '/home');
      });
    });
    
  }

  Future<void> loadData() async {
    await Future.delayed(const Duration(seconds: 5));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
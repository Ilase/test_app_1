import 'package:flutter/material.dart';
import 'package:test_app_1/drawer.dart';
import 'uniq_app_bar.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: const UniqAppBar(title: 'Home page',),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: BoxDecoration(
              border: Border.all(width: 3),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Expanded(
                child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 4)
                ),
                child: const Text('data'),
              )),
              Expanded(child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 4)
                ),
                child: const Text('data'),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

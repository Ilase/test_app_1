import 'package:flutter/material.dart';
import 'package:test_app_1/drawer.dart';
import 'package:test_app_1/uniq_app_bar.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniqAppBar(title: 'Profile'),
      drawer: CustomDrawer(),
    );
  }
}
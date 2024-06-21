import 'package:flutter/material.dart';
import 'package:test_app_1/widgets/container_drawer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ContainerDrawer(
      drawerWidth: 400,
      drawerAnimationDuration: const Duration(milliseconds: 250),
      child: Container()
    );
      
  }
}
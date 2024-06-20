
import 'package:flutter/material.dart';
import 'package:test_app_1/container_drawer.dart';
import 'package:test_app_1/uniq_app_bar.dart';


class ProjectsViewScreen extends StatefulWidget {
  const ProjectsViewScreen({super.key});

  @override
  _ProjectsViewScreenState createState() => _ProjectsViewScreenState();
}

class _ProjectsViewScreenState extends State<ProjectsViewScreen> {
  @override
  Widget build(BuildContext context) {
    return ContainerDrawer(
      drawerWidth: 400, 
      drawerAnimationDuration: Duration(milliseconds: 250),
      child: Container()
    );
  }
}
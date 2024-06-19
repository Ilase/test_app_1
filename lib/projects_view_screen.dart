
import 'package:flutter/material.dart';
import 'package:test_app_1/drawer.dart';
import 'package:test_app_1/uniq_app_bar.dart';


class ProjectsViewScreen extends StatefulWidget {
  ProjectsViewScreen({Key? key}) : super(key: key);

  @override
  _ProjectsViewScreenState createState() => _ProjectsViewScreenState();
}

class _ProjectsViewScreenState extends State<ProjectsViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UniqAppBar(
        title: 'Project board'
        ),
      drawer: CustomDrawer(),
    );
  }
}
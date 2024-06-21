import 'package:flutter/material.dart';
import 'package:test_app_1/pages/profile_page.dart';
import 'package:test_app_1/pages/projects_view_screen.dart';
import 'pages/home_screen.dart';
import 'pages/loading_screen.dart';
//import 'package:mssql_connection/mssql_connection.dart';




void main() {

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: AppThemeData(),
      routes: {
        '/loading_screen': (context) => const LoadingScreen(),
        '/home': (context) => const HomeScreen(), 
        '/projects': (context) => const ProjectsViewScreen(),
        '/profile': (context) => const ProfilePage(),
      },
      initialRoute: '/loading_screen',
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_app_1/container_drawer.dart';

const double drawerWidth = 400;
const Duration drawerAnimationDuration = Duration(milliseconds: 250);

class HomeScreen extends StatefulWidget {
  
  
  const HomeScreen({super.key});
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return ContainerDrawer(
      drawerWidth: 400, 
      drawerAnimationDuration: Duration(milliseconds: 250), 
      child: Container()
    );
  }

  Widget _buildMenu() {
    return Container(
      width: drawerWidth,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
          )
        ],
      ),
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('s'),
            accountEmail: Text('te'),
            onDetailsPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            title: Text("Home page"),
          )
        ],
      ),
    );
  }
}
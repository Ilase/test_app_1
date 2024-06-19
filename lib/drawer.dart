import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  CustomDrawer({super.key});

  @override
  Custom_DrawerState createState() => Custom_DrawerState();
}

class Custom_DrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 4,
      child: ListView(
        children: [
          InkWell(
            child: Container(
              height: 100,
              decoration: BoxDecoration(),
              child: Row(
                children: [
                  Expanded(child: Icon(Icons.circle)),
                  Expanded(child: Text('Account Name'))
                ],
              ),
              
            ),
            onTap: (){
              Navigator.of(context).pushNamed('/profile');
            },
          ),
          ListTile(
            title: const Text(
              'Home',
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          ListTile(
            title: const Text(
              'Projects',
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/projects');
            },
          ),
          ListTile(
            title: const Text(
              'Office map',
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

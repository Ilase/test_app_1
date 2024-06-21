import 'package:flutter/material.dart';

class ContainerDrawer extends StatefulWidget {
  final Duration drawerAnimationDuration;
  final double drawerWidth;
  final Widget child;
  const ContainerDrawer(
      {super.key,
      required this.drawerWidth,
      required this.drawerAnimationDuration,
      required this.child});

  @override
  _ContainerDrawerState createState() => _ContainerDrawerState(
      this.drawerAnimationDuration, this.drawerWidth, this.child);
}

class _ContainerDrawerState extends State<ContainerDrawer>
    with SingleTickerProviderStateMixin {
  late AnimationController _animation;
  double drawerWidth = 400;
  Duration drawerAnimationDuration = const Duration(milliseconds: 250);

  Widget? child;
  _ContainerDrawerState(
      this.drawerAnimationDuration, this.drawerWidth, this.child);
  @override
  void initState() {
    _animation = AnimationController(
        value: 1, vsync: this, duration: drawerAnimationDuration);
    super.initState();
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  void _menuButtonPressed() {
    if (_animation.isAnimating) return;
    _animation.isCompleted ? _animation.reverse() : _animation.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      SlideTransition(
          position: Tween<Offset>(begin: const Offset(-1, 1), end: Offset.zero)
              .animate(_animation),
          child: DrawerContainerContent()),
      AnimatedBuilder(
        animation: _animation,
        builder: (_, widget) => Padding(
          padding: EdgeInsets.only(left: drawerWidth * _animation.value),
          child: widget,
        ),
        child: Scaffold(
            appBar: AppBar(
              title: const Text('ASD'),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: _menuButtonPressed,
              ),
            ),
            body: child),
      )
    ]);
  }

  Widget _buildMenu() {
    return Container(
      width: drawerWidth,
      decoration: BoxDecoration(boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
        )
      ]),
    );
  }

  Widget? _buildContent() {
    return child;
  }
}

class DrawerContainerContent extends StatefulWidget {
  DrawerContainerContent({Key? key}) : super(key: key);

  @override
  _DrawerContainerContentState createState() => _DrawerContainerContentState();
}

class _DrawerContainerContentState extends State<DrawerContainerContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('123'),
            ),
          ),
          ListView(
            children: [
              ListTile(
                title: Text('Tile 1'),
              )
            ],
          )
        ],
      ),
    );
  }
}

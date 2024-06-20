import 'package:flutter/material.dart';

class UniqAppBar extends StatefulWidget implements PreferredSizeWidget {
  const UniqAppBar({super.key, required this.title})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;
  final String title;
  @override
  State<UniqAppBar> createState() => _UniqAppBarState();
}

class _UniqAppBarState extends State<UniqAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      shadowColor: Colors.black54,
      backgroundColor: Colors.blue,
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}

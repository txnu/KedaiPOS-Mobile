import 'package:flutter/material.dart';

class NavbarModel extends StatelessWidget {
  final Widget content;
  const NavbarModel({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: content));
  }
}

import 'package:flutter/material.dart';
import 'package:kedaipos_mobile/components/navbar/view/navbar.dart';

class NavbarController extends StatefulWidget {
  const NavbarController({super.key});

  @override
  State<NavbarController> createState() => _NavbarControllerState();
}

class _NavbarControllerState extends State<NavbarController> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NavbarView(),
    );
  }
}

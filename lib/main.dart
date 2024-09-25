import 'package:flutter/material.dart';
// import 'package:kedaipos_mobile/components/navbar/navbar.dart';
import 'package:kedaipos_mobile/components/navbar/navbar_dashboard.dart';
import 'package:kedaipos_mobile/view/auth/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JayaPOS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginView(),
      routes: {"/home": (context) => const NavbarView()},
    );
  }
}

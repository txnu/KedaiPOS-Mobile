import 'package:flutter/material.dart';

class RiwayatContent extends StatefulWidget {
  const RiwayatContent({super.key});

  @override
  State<RiwayatContent> createState() => _RiwayatContentState();
}

class _RiwayatContentState extends State<RiwayatContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Text("Riwayata"),
        ),
      ),
    );
  }
}

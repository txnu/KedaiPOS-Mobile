import 'package:flutter/material.dart';

class PendapatanContent extends StatefulWidget {
  const PendapatanContent({super.key});

  @override
  State<PendapatanContent> createState() => _PendapatanContentState();
}

class _PendapatanContentState extends State<PendapatanContent> {
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
          child: Text("Pendapatan"),
        ),
      ),
    );
  }
}

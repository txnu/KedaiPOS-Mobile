import 'package:flutter/material.dart';

class AllContent extends StatefulWidget {
  const AllContent({super.key});

  @override
  State<AllContent> createState() => _AllContentState();
}

class _AllContentState extends State<AllContent> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(),
    );
  }
}

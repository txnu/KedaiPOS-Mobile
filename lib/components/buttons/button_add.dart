import 'package:flutter/material.dart';

class ButtonAdd extends StatelessWidget {
  final VoidCallback onTap;
  const ButtonAdd({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      backgroundColor: Colors.deepPurple,
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}

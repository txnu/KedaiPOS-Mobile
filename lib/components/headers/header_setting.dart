import 'package:flutter/material.dart';

class HeaderSetting extends StatelessWidget {
  final String namabisnis;
  final String tanggalbergabung;
  const HeaderSetting({
    super.key,
    required this.namabisnis,
    required this.tanggalbergabung,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      height: 140,
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(
              "assets/images/warung.png",
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                namabisnis,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                tanggalbergabung,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

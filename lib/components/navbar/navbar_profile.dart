import 'package:flutter/material.dart';

class NavbarProfile extends StatelessWidget {
  final String selectedTab;
  final Function(String) onTabChange;

  const NavbarProfile({
    super.key,
    required this.selectedTab,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
          color: Colors.deepPurple,
          border: Border.symmetric(
              horizontal: BorderSide(width: 0.5, color: Colors.white))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: InkWell(
              onTap: () => onTabChange('Riwayat'),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selectedTab == 'Riwayat'
                      ? Colors.grey[300]
                      : Colors.transparent,
                ),
                child: Text(
                  "Riwayat",
                  style: TextStyle(
                      color: selectedTab == 'Riwayat'
                          ? Colors.black
                          : Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const VerticalDivider(
            width: 2,
          ),
          Expanded(
            child: InkWell(
              onTap: () => onTabChange('Pendapatan'),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selectedTab == 'Pendapatan'
                      ? Colors.grey[300]
                      : Colors.transparent,
                ),
                child: Text(
                  "Pendapatan",
                  style: TextStyle(
                      color: selectedTab == 'Pendapatan'
                          ? Colors.black
                          : Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NavbarSetting extends StatelessWidget {
  final String selectedTab;
  final Function(String) onTabChange;

  const NavbarSetting({
    super.key,
    required this.selectedTab,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
          color: Colors.deepPurple,
          border: Border.symmetric(
              horizontal: BorderSide(width: 0.5, color: Colors.white))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: InkWell(
              onTap: () => onTabChange('Hari ini'),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selectedTab == 'Hari ini'
                      ? Colors.grey[300]
                      : Colors.transparent,
                ),
                child: Text(
                  "Hari ini",
                  style: TextStyle(
                      color: selectedTab == 'Hari ini'
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
              onTap: () => onTabChange('Semua'),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selectedTab == 'Semua'
                      ? Colors.grey[300]
                      : Colors.transparent,
                ),
                child: Text(
                  "Semua",
                  style: TextStyle(
                      color:
                          selectedTab == 'Semua' ? Colors.black : Colors.white,
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

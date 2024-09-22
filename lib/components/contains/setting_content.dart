import 'package:flutter/material.dart';
import 'package:kedaipos_mobile/components/contains/pendapatan_content.dart';
import 'package:kedaipos_mobile/components/contains/riwayat_content.dart';

class SettingContent extends StatelessWidget {
  final String selectedTab;
  const SettingContent({
    super.key,
    required this.selectedTab,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 550,
        // color: Colors.deepPurple,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Center(
          child:
              selectedTab == 'Riwayat' ? RiwayatContent() : PendapatanContent(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kedaipos_mobile/components/contains/semua_content.dart';
import 'package:kedaipos_mobile/components/contains/hariini_content.dart';

class SettingContent extends StatelessWidget {
  final String selectedTab;
  const SettingContent({
    super.key,
    required this.selectedTab,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Container(
          height: 570,
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
          ),
          child: selectedTab == 'Hari ini'
              ? const RiwayatContent()
              : const PendapatanContent(),
        ),
      ),
    );
  }
}

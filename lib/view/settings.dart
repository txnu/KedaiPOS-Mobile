// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kedaipos_mobile/components/cards/profile_card.dart';
import 'package:kedaipos_mobile/components/contains/setting_content.dart';
import 'package:kedaipos_mobile/components/navbar/navbar_profile.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  String _selectedTab = 'Riwayat';

  void _updateTab(String tab) {
    setState(() {
      _selectedTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
          // margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              ProfileCard(
                  namabisnis: 'Nama Bisnis',
                  tanggalbergabung: 'Bergabung pada 10/Januari/2023'),
              NavbarProfile(
                selectedTab: _selectedTab,
                onTabChange: _updateTab,
              ),
              SettingContent(
                selectedTab: _selectedTab,
              )
            ],
          ),
        ),
      ),
    );
  }
}

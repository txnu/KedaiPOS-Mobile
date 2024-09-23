// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kedaipos_mobile/components/headers/header_setting.dart';
import 'package:kedaipos_mobile/components/contains/setting_content.dart';
import 'package:kedaipos_mobile/components/navbar/navbar_settings.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  String _selectedTab = 'Hari ini';

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
          child: Column(
            children: [
              HeaderSetting(
                  namabisnis: 'Nama Bisnis',
                  tanggalbergabung: 'Bergabung pada 10/Januari/2023'),
              NavbarSetting(
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

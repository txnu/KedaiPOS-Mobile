import 'package:flutter/material.dart';
import 'package:kedaipos_mobile/view/home/home.dart';
import 'package:kedaipos_mobile/view/home/product.dart';
import 'package:kedaipos_mobile/view/settings.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({super.key});

  @override
  State<NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        backgroundColor: Colors.grey.shade300,
        tabs: [
          PersistentTabConfig(
            screen: const HomeView(),
            item: ItemConfig(
              activeForegroundColor: Colors.deepPurple,
              icon: const Icon(Icons.home),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: const ProductView(),
            item: ItemConfig(
              icon: const Icon(Icons.document_scanner),
              title: "Manage",
              activeForegroundColor: Colors.deepPurple,
            ),
          ),
          PersistentTabConfig(
            screen: const ProductView(),
            item: ItemConfig(
              icon: const Icon(Icons.qr_code_scanner),
              activeForegroundColor: Colors.deepPurple,
              inactiveForegroundColor: Colors.white,
            ),
          ),
          PersistentTabConfig(
            screen: const ProductView(),
            item: ItemConfig(
              icon: const Icon(Icons.edit_document),
              title: "Laporan",
              activeForegroundColor: Colors.deepPurple,
            ),
          ),
          PersistentTabConfig(
            screen: const SettingsView(),
            item: ItemConfig(
              icon: const Icon(Icons.settings),
              title: "Settings",
              activeForegroundColor: Colors.deepPurple,
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) =>
            Style13BottomNavBar(navBarConfig: navBarConfig),
      ),
    );
  }
}

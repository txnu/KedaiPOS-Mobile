import 'package:flutter/material.dart';
import 'package:kedaipos_mobile/components/navbar/model/model.dart';
import 'package:kedaipos_mobile/view/analytic.dart';
import 'package:kedaipos_mobile/view/history.dart';
import 'package:kedaipos_mobile/view/home.dart';
import 'package:kedaipos_mobile/view/product.dart';
import 'package:kedaipos_mobile/view/settings.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({super.key});

  @override
  State<NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    NavbarModel(
      content: HomeView(),
    ),
    NavbarModel(
      content: ProductView(),
    ),
    NavbarModel(
      content: AnalyticView(),
    ),
    NavbarModel(
      content: HistoryView(),
    ),
    NavbarModel(
      content: SettingsView(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[500],
        backgroundColor: Colors.deepPurple,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_check), label: "Produk"),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics), label: "Analisis"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "Riwayat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Pengaturan"),
        ],
      ),
    );
  }
}

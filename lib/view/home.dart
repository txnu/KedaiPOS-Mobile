import 'package:flutter/material.dart';
import 'package:kedaipos_mobile/components/buttons/floating_button.dart';
import 'package:kedaipos_mobile/components/cards/product_card.dart';
import 'package:kedaipos_mobile/view/cart.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool _showFloatingButton = false;
  String _itemCount = '0';

  void _onItemTapped() {
    setState(() {
      _showFloatingButton = true;
      _itemCount = '5';
    });
  }

  void _onFloatingPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CartView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "JayaPOS - Solusi Bisnis Anda",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemCount: 6, // Update based on your data
          itemBuilder: (context, index) {
            return ProductCard(
              onTap: _onItemTapped,
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AnimatedSlide(
        duration: const Duration(milliseconds: 200),
        offset: _showFloatingButton ? Offset.zero : const Offset(0, 1),
        child: _showFloatingButton
            ? FloatingButton(
                itemCount: _itemCount,
                onPressed: _onFloatingPressed,
              )
            : null,
      ),
    );
  }
}

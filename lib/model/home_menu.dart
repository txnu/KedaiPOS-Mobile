import 'package:flutter/material.dart';

class HomeMenuModel extends StatelessWidget {
  const HomeMenuModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurple[200],
      ),
      child: Wrap(
        spacing: 30,
        runSpacing: 20,
        alignment: WrapAlignment.spaceBetween,
        children: List.generate(menuItems.length, (index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(menuItems[index].icon),
              ),
              const SizedBox(height: 4),
              Text(
                menuItems[index].label,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class MenuItem {
  final String icon;
  final String label;

  MenuItem(this.icon, this.label);
}

final List<MenuItem> menuItems = [
  MenuItem("assets/icons/pos.png", "POS"),
  MenuItem("assets/icons/pos.png", "Hutang"),
  MenuItem("assets/icons/product.png", "Produk"),
  MenuItem("assets/icons/history.png", "Riwayat"),
  MenuItem("assets/icons/print.png", "Cetak"),
  MenuItem("assets/icons/pos.png", "Baru"),
];

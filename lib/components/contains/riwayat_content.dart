import 'package:flutter/material.dart';
import 'package:kedaipos_mobile/components/tables/table_history.dart';

class RiwayatContent extends StatefulWidget {
  const RiwayatContent({super.key});

  @override
  State<RiwayatContent> createState() => _RiwayatContentState();
}

class _RiwayatContentState extends State<RiwayatContent> {
  final List<Map<String, String>> historys = [
    {
      "kodeTransaksi": "001",
      "item": "Produk A",
      "totalTransaksi": "Rp20.000",
      "hargaJual": "Rp50.000",
      "stok": "5",
    },
    {
      "kodeTransaksi": "002",
      "item": "Produk B",
      "totalTransaksi": "Rp10.000",
      "hargaJual": "Rp30.000",
      "stok": "8",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: TableHistory(historys: historys),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kedaipos_mobile/components/tables/table_history.dart';

class HistoryView extends StatefulWidget {
  const HistoryView({super.key});

  @override
  State<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Riwayat Transaksi",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
        child: TableHistory(
          historys: historys,
        ),
      ),
    );
  }
}

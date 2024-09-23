import 'package:flutter/material.dart';
import 'package:kedaipos_mobile/components/tables/table_history.dart';

class TodayContent extends StatefulWidget {
  const TodayContent({super.key});

  @override
  State<TodayContent> createState() => _TodayContentState();
}

class _TodayContentState extends State<TodayContent> {
  final List<Map<String, String>> historys = [
    {
      "kodeTransaksi": "001",
      "item": "Produk A",
      "totalTransaksi": "Rp20.000",
    },
    {
      "kodeTransaksi": "002",
      "item": "Produk B",
      "totalTransaksi": "Rp10.000",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: TableHistory(historys: historys),
    );
  }
}

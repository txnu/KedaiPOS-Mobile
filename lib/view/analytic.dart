import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

class AnalyticView extends StatelessWidget {
  const AnalyticView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Chart(
        data: const [
          {"bulan": "0", "total_pendapatan": "0"},
          {"bulan": "januari", "total_pendapatan": "5000"},
          {"bulan": "februari", "total_pendapatan": "3500"},
          {"bulan": "maret", "total_pendapatan": "6000"},
        ],
        variables: {
          "bulan": Variable(accessor: (Map map) => map["bulan"] as String),
          "total_pendapatan": Variable(
              accessor: (Map map) => map["total_pendapatan"] as String),
        },
        marks: [IntervalMark()],
        axes: [
          Defaults.horizontalAxis,
          Defaults.verticalAxis,
        ],
      ),
    );
  }
}

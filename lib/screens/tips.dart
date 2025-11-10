import 'package:flutter/material.dart';
import 'package:ecomarket_info_hub/data/eco_tips.dart';
import 'package:ecomarket_info_hub/widgets/tip_card.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consejos Sostenibles'),
        backgroundColor: const Color(0xFF43A047),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Consejos para una vida más sostenible',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF43A047),
            ),
          ),
          const SizedBox(height: 16),
          Column(
            children: ecoTips.map((tip) => TipCard(tip: tip)).toList(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ecomarket_info_hub/models/category.dart';
import 'package:ecomarket_info_hub/data/eco_tips.dart';
import 'package:ecomarket_info_hub/widgets/tip_card.dart';

class CategoryScreen extends StatelessWidget {
  final Category category;

  const CategoryScreen({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryTips = ecoTips
        .where((tip) => tip.category == category.name)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        backgroundColor: Color(
          int.parse('0xFF${category.color.replaceFirst('#', '')}'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(
                    int.parse('0xFF${category.color.replaceFirst('#', '')}'),
                  ).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      category.icon,
                      style: const TextStyle(fontSize: 64),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      category.description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF43A047),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Consejos y Recomendaciones',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF43A047),
                ),
              ),
              const SizedBox(height: 12),
              categoryTips.isNotEmpty
                  ? Column(
                children: categoryTips
                    .map((tip) => TipCard(tip: tip))
                    .toList(),
              )
                  : Center(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(
                    'No hay consejos disponibles para esta categoría',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

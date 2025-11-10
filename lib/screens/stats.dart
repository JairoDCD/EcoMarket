import 'package:flutter/material.dart';
import 'package:ecomarket_info_hub/data/eco_tips.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estadísticas Globales'),
        backgroundColor: const Color(0xFF43A047),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Impacto Ambiental Global',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF43A047),
            ),
          ),
          const SizedBox(height: 24),
          _buildStatCard(
            '12.5M',
            'Toneladas de CO₂ reducidas',
            '💨',
            const Color(0xFF43A047),
          ),
          const SizedBox(height: 16),
          _buildStatCard(
            '890K',
            'Toneladas de plástico recicladas',
            '♻️',
            const Color(0xFF66BB6A),
          ),
          const SizedBox(height: 16),
          _buildStatCard(
            '2.3M',
            'Árboles plantados',
            '🌳',
            const Color(0xFF81C784),
          ),
          const SizedBox(height: 16),
          _buildStatCard(
            '450 GWh',
            'Energía sostenible ahorrada',
            '⚡',
            const Color(0xFFA5D6A7),
          ),
          const SizedBox(height: 32),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5E9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Datos Actualizados',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF43A047),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Estas cifras representan el impacto acumulativo de iniciativas sostenibles globales y el compromiso de millones de personas con el planeta.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(
      String value,
      String label,
      String icon,
      Color color,
      ) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [color, color.withOpacity(0.7)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Text(
              icon,
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

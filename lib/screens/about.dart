import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
        backgroundColor: const Color(0xFF43A047),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5E9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                const Text(
                  '🌍',
                  style: TextStyle(fontSize: 64),
                ),
                const SizedBox(height: 16),
                const Text(
                  'EcoMarket Info Hub',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF43A047),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'v1.0',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Descripción',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF43A047),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'EcoMarket Info Hub es una aplicación informativa y visual sobre productos sostenibles. '
                'Te permite explorar categorías ecológicas, leer consejos prácticos y descubrir alternativas '
                'responsables para vivir de manera más sostenible.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Características',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF43A047),
            ),
          ),
          const SizedBox(height: 12),
          _buildFeatureItem('✓ Exploración de categorías ecológicas'),
          _buildFeatureItem('✓ Consejos sostenibles prácticos'),
          _buildFeatureItem('✓ Estadísticas globales de impacto ambiental'),
          _buildFeatureItem('✓ Diseño eco-minimalista'),
          _buildFeatureItem('✓ Funciona sin conexión a internet'),
          const SizedBox(height: 24),
          const Text(
            'Misión',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF43A047),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Inspirar y educar a las personas sobre prácticas sostenibles, demostrando que cada pequeña '
                'acción cuenta para proteger nuestro planeta.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 24),
          const Divider(),
          const SizedBox(height: 24),
          const Text(
            'Desarrollado con Flutter',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '© 2025 EcoMarket. Todos los derechos reservados.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
    );
  }
}

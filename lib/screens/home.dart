import 'package:flutter/material.dart';
import 'package:ecomarket_info_hub/data/eco_categories.dart';
import 'package:ecomarket_info_hub/widgets/category_card.dart';
import 'package:ecomarket_info_hub/widgets/drawer_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EcoMarket Info Hub'),
        backgroundColor: const Color(0xFF43A047),
        elevation: 0,
      ),
      drawer: const DrawerMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carrusel de productos destacados
            Container(
              height: 200,
              color: const Color(0xFFE8F5E9),
              child: PageView(
                controller: _pageController,
                children: [
                  _buildCarouselItem(
                    '♻️',
                    'Recicla y Reutiliza',
                    'Reduce tu impacto ambiental',
                  ),
                  _buildCarouselItem(
                    '🌱',
                    'Vive Sostenible',
                    'Pequeños cambios, gran impacto',
                  ),
                  _buildCarouselItem(
                    '💚',
                    'Cuida el Planeta',
                    'Es nuestro hogar común',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Categorías Ecológicas',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF43A047),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: ecoCategories.map((category) {
                      return CategoryCard(
                        category: category,
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            '/category',
                            arguments: category,
                          );
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselItem(String icon, String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          colors: [Color(0xFF43A047), Color(0xFF66BB6A)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            icon,
            style: const TextStyle(fontSize: 64),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

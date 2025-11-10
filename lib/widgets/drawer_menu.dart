import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF43A047),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '🌍',
                  style: TextStyle(fontSize: 48),
                ),
                SizedBox(height: 8),
                Text(
                  'EcoMarket Info Hub',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.lightbulb),
            title: const Text('Consejos Sostenibles'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/tips');
            },
          ),
          ListTile(
            leading: const Icon(Icons.bar_chart),
            title: const Text('Estadísticas Globales'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/stats');
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Acerca de'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/about');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.copyright),
            title: const Text('Créditos'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Créditos del Proyecto'),
                  content: const Text(
                    'EcoMarket Info Hub v1.0\n\n'
                        'Desarrollado con Flutter\n'
                        'Diseño eco-minimalista\n\n'
                        '© 2025 EcoMarket',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cerrar'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

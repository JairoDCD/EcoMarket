import 'package:flutter/material.dart';
import 'package:ecomarket_info_hub/screens/home.dart';
import 'package:ecomarket_info_hub/screens/category.dart';
import 'package:ecomarket_info_hub/screens/tips.dart';
import 'package:ecomarket_info_hub/screens/stats.dart';
import 'package:ecomarket_info_hub/screens/about.dart';
import 'package:ecomarket_info_hub/models/category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoMarket Info Hub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF43A047),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF43A047),
          elevation: 0,
          centerTitle: false,
        ),
        cardTheme: CardThemeData(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      home: const HomeScreen(),
      routes: {
        '/tips': (context) => const TipsScreen(),
        '/stats': (context) => const StatsScreen(),
        '/about': (context) => const AboutScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/category') {
          final category = settings.arguments as Category;
          return MaterialPageRoute(
            builder: (context) => CategoryScreen(category: category),
          );
        }
        return null;
      },
    );
  }
}

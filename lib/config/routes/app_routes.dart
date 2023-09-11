import 'package:flutter/material.dart';
import 'package:movies/screens/screens.dart';

class AppRoutes {
  static String initialRoute = '/';
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (_) => const HomeScreen(),
    'details': (_) => const DetailsScreen(),
  };
}

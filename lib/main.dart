import 'package:flutter/material.dart';
import 'package:movie_app/view/category.dart';
import 'package:movie_app/view/detail.dart';
import 'package:movie_app/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Asian Movie Catalog',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/category') {
          final args = settings.arguments;
          final String categoryName = (args is String) ? args : 'Korea';
          return MaterialPageRoute(
            builder: (context) => CategoryPage(categoryName: categoryName),
          );
        }
        if (settings.name == '/detail') {
          final args = settings.arguments;
          final int movieId = (args is int) ? args : 1;
          return MaterialPageRoute(
            builder: (context) => Detail(movieId: movieId),
          );
        }
        return MaterialPageRoute(builder: (context) => const Home());
      },
    );
  }
}
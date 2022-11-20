import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          titleMedium: TextStyle(
              fontSize: 15,
              color: Colors.white
          ),
          titleSmall: TextStyle(
              height: 1.8,
              fontSize: 14,
              color: Colors.white
          ),
          titleLarge: TextStyle(
              fontSize: 18,
              color: Colors.white
          )
        )
      ),
      home: const HomePage()
    );
  }
}
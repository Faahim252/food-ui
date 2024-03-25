import 'package:flutter/material.dart';
import 'package:food/pages/food_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Food App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Averta',
          primaryColor: Color(0xffffc529),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Color(
              0xfffe724c,
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Foodlistpage());
  }
}

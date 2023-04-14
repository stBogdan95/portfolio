import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/theme.dart';
import 'package:my_portfolio/screens/home/view.dart';

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
      theme: AppTheme(context).theme,
      home: const HomePageView(),
    );
  }
}

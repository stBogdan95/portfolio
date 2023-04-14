import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/adaptive_design.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return AdaptiveDesign(
      mobile: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        color: theme.appBarTheme.backgroundColor,
        child: Row(children: [
          Text(
            'Mobile',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Rubik-Medium',
            ),
          ),
        ]),
      ),
      tablet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        color: theme.appBarTheme.backgroundColor,
        child: Row(children: [Text('Tablet')]),
      ),
      desktope: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        color: theme.appBarTheme.backgroundColor,
        child: Row(children: [Text('Desktope')]),
      ),
    );
  }
}

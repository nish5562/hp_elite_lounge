import 'package:flutter/material.dart';
import 'package:hp_elite_lounge/theFrontPage.dart';

void main() {
  runApp(const EliteLounge());
}

class EliteLounge extends StatelessWidget {
  const EliteLounge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(),
    home: const TheFrontPage(),
    );
  }
}

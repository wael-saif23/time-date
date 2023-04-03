import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(const TimeDateApp());

class TimeDateApp extends StatelessWidget {
  const TimeDateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


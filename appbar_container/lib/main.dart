import 'package:appbar_container/appbar1.dart';
import 'package:appbar_container/appbar2.dart';
import 'package:appbar_container/appbar3.dart';
import 'package:appbar_container/appbar4.dart';
import 'package:appbar_container/appbar5.dart';
import 'package:appbar_container/appbar6.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Appbar6(),
      debugShowCheckedModeBanner: false,
    );
  }
}

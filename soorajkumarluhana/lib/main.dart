import 'package:flutter/material.dart';
import 'package:soorajkumarluhana/bottamBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavigation(),
    );
  }
}

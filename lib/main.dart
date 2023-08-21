import 'package:flutter/material.dart';

import 'features/home/presentation/view/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 110, 29, 192)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
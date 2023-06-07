import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter IHS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MediumConstrait(),
    );
  }
}

class MediumConstrait extends StatelessWidget {
  const MediumConstrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      // nilai dari Aligment bisa digantik dengan alignment konstan
      alignment: Alignment(-1, -1),
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
    );
  }
}

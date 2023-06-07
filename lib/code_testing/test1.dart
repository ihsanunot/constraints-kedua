import 'package:flutter/material.dart';

class NormalConstrait extends StatelessWidget {
  const NormalConstrait({super.key});

  @override
  Widget build(BuildContext context) {
    // container dibungkus center buat test constraints
    return Center(
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        // Center akan memenuhi layar sesuai constraints dari parent widget-nya (root).
      ),
    );
  }
}

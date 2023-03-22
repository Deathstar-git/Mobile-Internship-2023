import 'package:flutter/material.dart';

// Индикатор загрузки для infinity list'ов
class BottomLoader extends StatelessWidget {
  const BottomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 32,
        width: 32,
        child: CircularProgressIndicator(strokeWidth: 3),
      ),
    );
  }
}
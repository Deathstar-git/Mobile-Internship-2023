import 'package:flutter/material.dart';
import 'package:mobile_internship_1/ui/common/colors.dart';

// Индикатор загрузки для infinity list'ов
class BottomLoader extends StatelessWidget {
  const BottomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(strokeWidth: 2, color: AppColors.gray_1),
      ),
    );
  }
}
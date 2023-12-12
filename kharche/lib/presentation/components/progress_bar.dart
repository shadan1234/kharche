import 'package:flutter/material.dart';
import 'package:kharche/utils/theme/color_theme.dart';

class CustomBar extends StatelessWidget {
  final double progress;
  final double width;
  final double height;
  final Color color;

  const CustomBar({
    Key? key,
    required this.progress,
    required this.width,
    this.height = 12,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: ClrTheme.light60,
              borderRadius: BorderRadius.circular(height),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 600),
            width: width * progress,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(height),
            ),
          ),
        ],
      ),
    );
  }
}

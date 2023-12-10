import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final IconData? icon;
  final double width;
  final double height;
  final TextStyle textStyle;
  final Color buttonColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.width,
    required this.height,
    required this.textStyle,
    required this.buttonColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
          color: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * 0.047),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: textStyle.color!,
                      width: textStyle.fontSize! / 9,
                    ),
                    borderRadius:
                        BorderRadius.circular(textStyle.fontSize! / 3),
                  ),
                  child: Icon(
                    icon,
                    color: textStyle.color,
                    size: (textStyle.fontSize ?? 18) * 1.4,
                  ),
                ),
              ),
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: textStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

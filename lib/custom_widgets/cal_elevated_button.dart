import 'package:flutter/material.dart';
import 'package:getx_calculator/custom_styles/cal_color_styles.dart';

class calElevatedButton extends StatelessWidget {
  const calElevatedButton({
    Key? key,
    required this.text,
    required this.press,
    this.onPrimaryColor,
    this.primaryColor,
    this.padding = const EdgeInsets.all(ColorStyle.defaultPadding * 0.75),
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final Color? onPrimaryColor;
  final Color? primaryColor;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        // Foreground color
        onPrimary:
            onPrimaryColor ?? Theme.of(context).colorScheme.onPrimaryContainer,
        // Background color
        primary: primaryColor ?? Theme.of(context).colorScheme.primaryContainer,
        padding: padding,
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

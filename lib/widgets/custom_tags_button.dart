import 'package:flutter/material.dart';


class CustomTagsButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color color;
  final EdgeInsetsGeometry? padding;
  
  CustomTagsButton({
    required this.text,
    this.onPressed,
    required this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0), color: color),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.5),
            child: Center(child: Text(text,)),
          ),
        ),
      ),
    );
  }
}

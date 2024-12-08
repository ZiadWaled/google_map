import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final String? fontFamily;
  final TextAlign textAlign;
  final TextDirection? textDirection;
  final int? maxLines;
  final TextOverflow overflow;
  final TextDecoration? decoration;
  final double? letterSpacing;

  // General constructor
  const MainText(
    this.text, {
    super.key,
    this.color,
    this.fontSize = 12,
    this.fontWeight = FontWeight.normal,
    this.fontFamily,
    this.textAlign = TextAlign.start,
    this.textDirection,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
    this.decoration,
    this.letterSpacing,
  });

  // Named constructor for page titles
  const MainText.pageTitle(
    this.text, {
    super.key,
    this.color,
    this.fontSize = 32,
    this.fontWeight = FontWeight.w600,
    this.fontFamily,
    this.textAlign = TextAlign.start,
    this.textDirection,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
    this.decoration,
    this.letterSpacing,
  });

  // Named constructor for titles
  const MainText.title(
    this.text, {
    super.key,
    this.color,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.fontFamily,
    this.textAlign = TextAlign.start,
    this.textDirection,
    this.maxLines,
    this.overflow = TextOverflow.ellipsis,
    this.decoration,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      textDirection: textDirection,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        decoration: decoration,
        color: color ?? Colors.black, // Provide fallback color here
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        letterSpacing: letterSpacing,
      ),
    );
  }
}

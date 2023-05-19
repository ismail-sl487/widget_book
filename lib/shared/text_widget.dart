import 'package:flutter/material.dart';
import 'package:widget_book/theme.dart';

class WidgetText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final int? maxLines;
  final double? lineHeight;
  final TextAlign? textAlign;
  final double? heightSpacingText;
  final double? letterSpacing;
  const WidgetText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.textAlign,
      this.fontWeight,
      this.lineHeight,
      this.heightSpacingText = 1,
      this.color,
      this.maxLines = 5,
      this.letterSpacing = 0.2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(
          text: text,
          style: CommonTextStyle.style(
              letterSpacing: letterSpacing,
              heightSpacingText: heightSpacingText,
              lineHeight: lineHeight,
              color: color ?? primaryColor,
              fontWeight: fontWeight ?? FontWeight.w400,
              fontSize: fontSize ?? 14)),
    );
  }
  
}

class CommonTextStyle {
  static TextStyle style({
    final double? fontSize,
    final FontWeight? fontWeight,
    final Color? color,
    final int? maxLines,
    final double? lineHeight,
    final TextAlign? textAlign,
    final double? heightSpacingText,
    final double? letterSpacing,
    final TextOverflow? overflow,
  }) {
    return TextStyle(
        height: heightSpacingText,
        letterSpacing: letterSpacing,
        overflow: overflow ?? TextOverflow.ellipsis,
        color: color ?? primaryColor,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontFamily: 'Gotham Pro',
        fontSize: fontSize ?? 14);
  }
}
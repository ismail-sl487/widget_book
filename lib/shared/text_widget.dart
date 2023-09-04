import 'package:flutter/material.dart';
import 'package:mceasy_widget/theme.dart';

class METext extends StatelessWidget {
  const METext(
      {Key? key,
      this.fontWeight = FontWeight.w400,
      this.color = Colors.black,
      this.fontSize = 12,
      this.letterSpacing = 0.5,
      this.height = 1,
      this.overflow,
      this.maxLine,
      required this.text,
      this.textAlign,
      this.fontFamily = CommonFontSize.regular})
      : super(key: key);

  final String text;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize, letterSpacing, height;
  final TextOverflow? overflow;
  final int? maxLine;
  final TextAlign? textAlign;
  final CommonFontSize fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          letterSpacing: letterSpacing,
          height: height,
          overflow: overflow,
          fontFamily: setFontSize(fontFamily)),
      maxLines: maxLine,
      textAlign: textAlign,
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
    final String? fontFamily = 'GothamPro',
  }) {
    return TextStyle(
        height: heightSpacingText,
        letterSpacing: letterSpacing,
        overflow: overflow ?? TextOverflow.ellipsis,
        color: color ?? primaryColor,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontFamily: fontFamily,
        fontSize: fontSize ?? 14);
  }
}

import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/theme.dart';
import 'package:mceasy_widget/theme.dart';

// class METext extends StatelessWidget {
//   const METext(
//       {Key? key,
//       this.fontWeight = FontWeight.w400,
//       this.color = Colors.black,
//       this.fontSize = 12,
//       this.letterSpacing = 0.5,
//       this.height = 1,
//       this.overflow,
//       this.maxLine,
//       required this.text,
//       this.textAlign,})
//       : super(key: key);

//   final String text;
//   final FontWeight fontWeight;
//   final Color color;
//   final double fontSize, letterSpacing, height;
//   final TextOverflow? overflow;
//   final int? maxLine;
//   final TextAlign? textAlign;

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: TextStyle(
//           color: color,
//           fontSize: fontSize,
//           letterSpacing: letterSpacing,
//           height: height,
//           overflow: overflow,
//           fontFamily: setFontSize(fontWeight)),
//       maxLines: maxLine,
//       textAlign: textAlign,
//     );
//   }
// }


class METext extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final int? maxLines;
  final double? lineHeight;
  final TextAlign? textAlign;
  final double? height;
  final double? letterSpacing;
  const METext(
      {Key? key,
      required this.text,
      this.fontSize = 12,
      this.textAlign,
      this.fontWeight = FontWeight.w400,
      this.lineHeight,
      this.height = 1,
      this.color,
      this.maxLines,
      this.letterSpacing = 0.2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: maxLines,
      overflow: maxLines == 1 ? TextOverflow.ellipsis : TextOverflow.visible,
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(
          text: text,
          style: CommonTextStyle.style(
              letterSpacing: letterSpacing,
              heightSpacingText: height,
              lineHeight: lineHeight,
              overflow: maxLines == 1 ?  TextOverflow.ellipsis : null,
              color: color ?? Pallets.navy100,
              fontWeight: fontWeight ?? FontWeight.w400,
              fontFamily:setFontSize(fontWeight!) ,
              fontSize: fontSize ?? 14)),
    );
  }
}


class CommonTextStyle {
  static TextStyle style({
    final double? fontSize,
    final FontWeight? fontWeight = FontWeight.w400,
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
        fontFamily: setFontSize(fontWeight!),
        fontSize: fontSize ?? 14);
  }
}

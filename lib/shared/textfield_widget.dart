import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class METextfield extends StatelessWidget {
  const METextfield({
    Key? key,
    this.width = 80,
    this.borderRadius = 6,
    this.height,
    this.enabled = true,
    this.preffixSizeIcon,
    this.hintText = "",
    this.suffixIcon,
    this.secondaryColor,
    this.filled = true,
    this.keyboardType,
    this.prefixIcon,
    this.maxLength,
    this.controller,
    this.maxLines = 1,
    this.textAlign,
    this.minLines = 1,
    this.onChanged,
    this.fontSize = 14,
    this.textAlignVertical,
    this.contentPadding = const EdgeInsets.only(left: 13, top: 6),
    this.fillColor = Colors.white,
  }) : super(key: key);

  final double? width, height, preffixSizeIcon, borderRadius;
  final bool? enabled, filled;
  final Widget? prefixIcon, suffixIcon;
  final String hintText;
  final Color? fillColor, secondaryColor;
  final double? fontSize;
  final TextAlignVertical? textAlignVertical;
  final TextInputType? keyboardType;
  final int? maxLength, maxLines, minLines;
  final EdgeInsetsGeometry contentPadding;
  final TextEditingController? controller;
  final TextAlign? textAlign;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        textAlign: textAlign ?? TextAlign.start,
        onChanged: onChanged,
        controller: controller,
        maxLines: maxLines,
        minLines: minLines,
        style: TextStyle(fontSize: fontSize ?? 14),
        enabled: enabled,
        keyboardType: keyboardType,
        textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
        maxLength: maxLength,
        inputFormatters: keyboardType == TextInputType.number ? [FilteringTextInputFormatter.digitsOnly] : null,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          filled: filled,
          fillColor: fillColor,
          hintStyle: TextStyle(fontSize: fontSize ?? 12),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: BorderSide(color: secondaryColor ?? const Color(0xFF99A1B1), width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: BorderSide(color: secondaryColor ?? const Color(0xFF99A1B1), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: BorderSide(color: secondaryColor ?? const Color(0xFF99A1B1), width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
        ),
      ),
    );
  }
}

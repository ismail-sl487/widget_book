library mceasy_widget;
import 'package:flutter/material.dart';

class TextFieldStyles extends StatelessWidget {
  TextFieldStyles(
      {Key? key,
      this.controller,
      this.onChange,
      this.hintName,
      this.color = Colors.black54,
      this.icon,
      this.fillColor=Colors.white,
      this.onTap})
      : super(key: key);

  TextEditingController? controller;
  Color? color;
  IconData? icon;
  String? hintName;
  Function(String)? onChange;
  GestureTapCallback? onTap;
  Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      onTap: onTap,
      controller: controller,
      style: const TextStyle(color: Colors.black, fontSize: 12),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        suffixIcon: icon != null
            ? SizedBox(
                height: 8,
                child: Icon(
                  icon,
                  color: color,
                ))
            : const SizedBox(),
        contentPadding: const EdgeInsets.only(left: 13, top: 6),
        hintStyle: TextStyle(color: color, fontFamily: "Gotham"),
        filled: true,
        fillColor: fillColor,
        hintText: hintName,
      ),
    );
  }
}

class MCTextfield extends StatelessWidget {
  const   MCTextfield({
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
    this.minLines = 1,
    this.onChanged,
    this.contentPadding = const EdgeInsets.only(left: 13, top: 6),
    this.fillColor =Colors.white,
  }) : super(key: key);

  final double? width,height,preffixSizeIcon,borderRadius;
  final bool? enabled,filled;
  final Widget? prefixIcon,suffixIcon;
  final String hintText;
  final Color? fillColor,secondaryColor;
  final TextInputType? keyboardType;
  final int? maxLength,maxLines,minLines;
  final EdgeInsetsGeometry contentPadding;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        onChanged: onChanged,
        controller: controller,
        maxLines: maxLines,
        minLines: minLines,
        enabled: enabled,
        keyboardType: keyboardType,
        maxLength: maxLength,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          prefixIcon:  prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          filled: filled,
          fillColor: fillColor,
          hintStyle: const TextStyle(fontSize: 12),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide:  BorderSide(color: secondaryColor ??const Color(0xFF99A1B1), width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            ),
          ),
        ),
    );
  }
}
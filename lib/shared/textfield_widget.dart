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
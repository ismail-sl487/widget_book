import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/theme.dart';

class MEButton extends StatelessWidget {
  const MEButton(
      {Key? key,
      this.icon,
      this.verticalPadding = 14,
      this.borderRadius = 6,
      this.bgColor = primaryColor,
      this.secondaryColor = Colors.white,
      required this.onTap,
      this.labelFontWeight = FontWeight.w400,
      this.label = ""})
      : super(key: key);
  final String label;
  final IconData? icon;
  final double verticalPadding, borderRadius;
  final Color? bgColor, secondaryColor;
  final Function() onTap;
  final FontWeight labelFontWeight;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon != null ? Icon(icon) : const SizedBox(),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.only(
            top: verticalPadding, bottom: verticalPadding, right: 15, left: 8)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius))),
        backgroundColor: MaterialStateProperty.all(bgColor),
      ),
      onPressed: onTap,
      label: METext(text: label, color: secondaryColor!,fontWeight: labelFontWeight),
    );
  }
}

class MeButtonOutline extends StatelessWidget {
  const MeButtonOutline(
      {Key? key,
      this.icon,
      this.verticalPadding = 14,
      this.borderRadius = 6,
      this.bgColor = primaryColor,
      this.secondaryColor = Colors.white,
      required this.onTap,
      this.label = ""})
      : super(key: key);
  final String label;
  final IconData? icon;
  final double verticalPadding, borderRadius;
  final Color? bgColor, secondaryColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: icon != null ? Icon(icon) : const SizedBox(),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.only(
            top: verticalPadding, bottom: verticalPadding, right: 15, left: 8)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius))),
        backgroundColor: MaterialStateProperty.all(bgColor),
      ),
      onPressed: onTap,
      label: METext(text: label, color: secondaryColor!),
    );
  }
}

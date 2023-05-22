import 'package:flutter/material.dart';
import 'package:widget_book/shared/text_widget.dart';
import 'package:widget_book/theme.dart';

class MeButton extends StatelessWidget {
  const MeButton({
    Key? key,
    this.icon,
    this.verticalPadding = 14,
    this.borderRadius = 6,
    this.bgColor = primaryColor,
    this.secondaryColor = Colors.white,
    required this.onTap,
    this.label = ""
    
    
  }) : super(key: key);
  final String label;
  final IconData? icon;
  final double verticalPadding,borderRadius;
  final Color? bgColor,secondaryColor;
  final Function() onTap;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon != null? Icon(icon) : const SizedBox(),
      style: ButtonStyle(
      padding: MaterialStateProperty.all(EdgeInsets.only(top: verticalPadding, bottom: verticalPadding,right: 15,left: 8)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius))),
          backgroundColor: MaterialStateProperty.all( bgColor ),
      ),
      onPressed: onTap,
      label: MCText(
        text: label,
        color: secondaryColor!
      ),       
    );
  }
}


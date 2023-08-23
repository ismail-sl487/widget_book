import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/text_widget.dart';

class MEStatusLabel extends StatelessWidget {
  const MEStatusLabel({
    super.key,
    required this.label,required this.bgColor,required this.ftColor
  });

  final String label;
  final Color bgColor,ftColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6)
      ),
      child: METext(text: label,color: ftColor,fontWeight: FontWeight.w600,),
    );
  }
}

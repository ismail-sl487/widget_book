import 'package:flutter/material.dart';

class MECard extends StatelessWidget {
  const MECard({
    Key? key,
    this.boxBorder,
    required this.widget,
  }) : super(key: key);
  final BoxBorder? boxBorder;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 16,top: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: boxBorder ?? Border.all(width: 1,color: Color(0xFFEBECEF)),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          // BoxShadow(blurRadius: 4,color: Color(0xFFd3d3e9).withOpacity(0.2),offset: Offset(0, 3))
        ]
      ),
      child: widget
    );
  }
}
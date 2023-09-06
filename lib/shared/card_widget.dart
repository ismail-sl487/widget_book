import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/theme.dart';

class MECard extends StatelessWidget {
  const MECard({
    Key? key,
    this.boxBorder,
    this.borderRadius = 8,
    this.width = 300,
    required this.widget,
  }) : super(key: key);
  final BoxBorder? boxBorder;
  final Widget widget;
  final double width;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.only(bottom: 16,top: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: boxBorder ?? Border.all(width: 1,color: Color(0xFFEBECEF)),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          // BoxShadow(blurRadius: 4,color: Color(0xFFd3d3e9).withOpacity(0.2),offset: Offset(0, 3))
        ]
      ),
      child: widget
    );
  }
}

class MECardShadow extends StatelessWidget {
  const MECardShadow({
    Key? key,
    this.boxBorder,
    this.width = 300,
    this.blurRadius = 4,
    this.shadowColor,
    this.shadowHorizontal = 0,
    this.borderRadius = 8,
    this.shadowVertical = 3,
    required this.widget,
  }) : super(key: key);
  final BoxBorder? boxBorder;
  final Widget widget;
  final double width;
  final double blurRadius;
  final Color? shadowColor;
  final double shadowVertical;
  final double shadowHorizontal;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.only(bottom: 16,top: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        // border: boxBorder ?? Border.all(width: 1,color: Color(0xFFEBECEF)),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(blurRadius: blurRadius,color: shadowColor ?? Pallets.primaryBlue20 ,offset: Offset(shadowHorizontal, shadowVertical))
        ]
      ),
      child: widget
    );
  }
}
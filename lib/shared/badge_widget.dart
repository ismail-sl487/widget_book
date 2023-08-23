import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/theme.dart';

class MEBadge extends StatelessWidget {
  const MEBadge({
    Key? key,
    required this.positioned,
    required this.badgecolor,
    this.badgeSize,
    this.label,
    this.labelSize = 10,
    this.labelColor = Colors.black87,
    
  }) : super(key: key);

  final PositionBadge? positioned;
  final String? label;
  final double labelSize;
  final double? badgeSize;
  final Color labelColor;
  final Color badgecolor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: positioned == PositionBadge.topLeft || positioned == PositionBadge.topRight ? 10 : null ,
      bottom: positioned == PositionBadge.bottomLeft || positioned == PositionBadge.bottomright? 10:null,
      right: positioned == PositionBadge.bottomright || positioned == PositionBadge.topRight? 8:null,
      left: positioned == PositionBadge.bottomLeft || positioned == PositionBadge.topLeft? 8 : null,
      child: Container(
        decoration: BoxDecoration(
          color: label != null? null : Colors.white,
          borderRadius: BorderRadius.circular(100)
        ),
        width: badgeSize,
        height: badgeSize,
        constraints: const BoxConstraints(
          minHeight: 14,
          minWidth: 14
        ),
        child: Container(
            margin: const EdgeInsets.all(2.5),
            padding: const EdgeInsets.only(top: 4,bottom: 2,left: 5,right: 5),
            decoration: BoxDecoration(
            color: badgecolor,
            borderRadius: BorderRadius.circular(100)
          ),
          child: label != null? Align(alignment: Alignment.center,child: METext(textAlign: TextAlign.center,text: label??'',fontSize: labelSize,color: labelColor,)) : null,
        ),
      )
    );
  }
}


class MEBadgeLabel extends StatelessWidget {
  const MEBadgeLabel({super.key,required this.badgecolor,this.label,this.labelSize = 14,this.labelColor = Colors.black87,});
  final String? label;
  final Color badgecolor;
  final Color labelColor;
  final double labelSize;
  

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: label != null? null : Colors.white,
          borderRadius: BorderRadius.circular(100)
        ),

        constraints: const BoxConstraints(
          minHeight: 14,
          minWidth: 14
        ),
        child: Container(
            margin: const EdgeInsets.all(2.5),
            padding: const EdgeInsets.only(top: 4,bottom: 2,left: 5,right: 5),
            decoration: BoxDecoration(
            color: badgecolor,
            borderRadius: BorderRadius.circular(100)
          ),
          child: label != null? Align(alignment: Alignment.center,child: METext(textAlign: TextAlign.center,text: label??'',fontSize: labelSize,color: labelColor,)) : null,
        ),
      );
  }
}
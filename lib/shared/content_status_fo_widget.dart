import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mceasy_widget/shared/status_label_widget.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/shared/theme.dart';
import 'package:mceasy_widget/theme.dart';

class ContentCardFO extends StatelessWidget {
  const ContentCardFO({
    super.key,
    this.foNumber,
    required this.statusLabel,
    required this.statusBGColor,
    this.depatureTime,
    this.origin,
    this.originMaxLine,
  });

  final String? foNumber;
  final String statusLabel;
  final Color statusBGColor;
  final String? origin;
  final String? depatureTime;
  final int? originMaxLine;

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              METext(text: foNumber??"",fontWeight: FontWeight.w600 ,fontSize: 18,),
              MEStatusLabel(label: statusLabel,bgColor: statusBGColor.withOpacity(0.2),ftColor: statusBGColor),
              
            ],
          ),
        ),
        const SizedBox(height: 12,),
        Divider(color: Pallets.primaryBlue20,thickness: 0.4),
        const SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(EvaIcons.pinOutline,size: 20,color: Pallets.navy100),
              const SizedBox(width: 6,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    METext(text: "Titik Awal",color: Pallets.navy100),
                    const SizedBox(height: 8,),
                    METext(text: origin??"",fontSize: 14,color: Pallets.navy100,maxLines: originMaxLine,)
                  ],
                ),
              )
            ],
          ),
        ),
       const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(EvaIcons.calendarOutline,size: 20,color: Color(0xFF344264)),
              SizedBox(width: 6,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  METext(text: "Waktu Keberangkatan",color: Color(0xFF344264)),
                  SizedBox(height: 8,),
                  METext(text: depatureTime??'',fontSize: 14,color: Color(0xFF01133D))
                ],
              )
            ],
          ),
        )
      ],
    ),);
  }
}
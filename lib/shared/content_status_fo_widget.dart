import 'dart:ui' as ui;
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/status_label_widget.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/shared/theme.dart';
import 'package:super_tooltip/super_tooltip.dart';
import 'package:mceasy_widget/utils/mceasy_icons.dart';





class ContentCardFO extends StatelessWidget {
  ContentCardFO({
    super.key,
    this.foNumber,
    required this.statusLabel,
    required this.statusBGColor,
    required this.controller,
    this.depatureTime,
    this.referenceNumber,
    this.origin,
    this.originMaxLine,
  });

  final String? foNumber;
  final String statusLabel;
  final Color statusBGColor;
  final String? origin;
  final String? depatureTime;
  final int? originMaxLine;
  final SuperTooltipController? controller;
  final String? referenceNumber;

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: referenceNumber == null? CrossAxisAlignment.center : CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    METext(text: foNumber??"",fontWeight: FontWeight.w600 ,fontSize: 18,),
                    Visibility(
                      visible: referenceNumber != null,
                      child: IntrinsicWidth(
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            Container(
                              constraints: BoxConstraints(maxWidth: 200),
                              child: METext(
                              text: referenceNumber ?? "",
                              fontSize: 10,
                              maxLines: 1,
                              ),
                            ),
                              Visibility(
                                visible:  !isSingleLine(referenceNumber??'',TextStyle(fontSize: 16), 200),
                                child: GestureDetector(
                                  onLongPress : (){
                                    controller?.showTooltip();
                                  },
                                  child: SuperTooltip(
                                    controller: controller,
                                    showBarrier: true,
                                    barrierColor: Colors.transparent,
                                    shadowColor: Pallets.navy40.withOpacity(0.5),
                                    content: METext(text: referenceNumber??''),
                                    child: Container(
                                      child: Icon(MceasyIcons.outline_info, size: 15)
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              MEStatusLabel(label: statusLabel,bgColor: statusBGColor.withOpacity(0.2),ftColor: statusBGColor),
              
            ],
          ),
        ),
        const SizedBox(height: 8,),
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

bool isSingleLine(String text, TextStyle style, double maxWidth) {
  final textPainter = TextPainter(
    text: TextSpan(text: text, style: style),
    maxLines: 1,
    textDirection: ui.TextDirection.ltr,
  )..layout(maxWidth: maxWidth);
  
  return !textPainter.didExceedMaxLines;
}

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/card_widget.dart';
import 'package:mceasy_widget/shared/constant.dart';
import 'package:mceasy_widget/shared/content_status_fo_widget.dart';
import 'package:mceasy_widget/shared/popup_widget.dart';
import 'package:mceasy_widget/shared/status_label_widget.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class CardStyler {
  WidgetbookUseCase cardBook() {
    return WidgetbookUseCase(
        name: "MECardStatusFO",
        builder: (p0) => Container(
            width: double.infinity,
              height: double.infinity,
              color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: MECard(
                widget: 
                  ContentCardFO(
                      foNumber: p0.knobs.string(label: "foNumber",initialValue: "FO-0001"),
                      statusLabel: p0.knobs.string(label: "statusLabel",initialValue: "Perjalanan"),
                      statusBGColor: p0.knobs.list(
                      label: "statusBGColor",
                      description: "Mengganti warna pada font button",
                      options: const [
                        Color(0XFFF64A33),
                        Color(0xFFFFFFFF),
                        Color(0xFF0D4491),
                        Color(0XFF439677),
                      ]),
                      depatureTime: p0.knobs.string(label: "depatureTime",initialValue: "21 Jan 2023, 13:00"),
                      origin: p0.knobs.string(label: "origin",initialValue: "Pool Surabaya"),
                      originMaxLine: p0.knobs.double.input(label: 'originMaxLine',initialValue: 1).toInt(),
                  )
                )),
              ],
            ),
          ),
        ));
  }

  WidgetbookUseCase deliveryCardBook() {
    return WidgetbookUseCase(
        name: "MEDeliveryCard",
        builder: (p0) => Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: MEDeliveryCard(
                  departureTime: p0.knobs.string(label: "departureTime",initialValue: "19 Jul 2023 15:00"),
                  destinationAddress: p0.knobs.string(label: "destinationAddress",initialValue: "Jl. Diponegoro No. FA-45, Surabaya, Jawa Timur, Indonesia"),
                  destinationName: p0.knobs.string(label: "destinationName",initialValue: "Gudang Airlangga"),
                  statusName: p0.knobs.string(label: "statusName",initialValue: "Ambil"),
                  statusColor: p0.knobs.list(label: "statusColor", options: colorOption),
                )),
              ],
            ),
          ),
        ));

    
  }
  WidgetbookUseCase meCardBook(){
    return WidgetbookUseCase(name: "MECard", builder: (context) {
      return Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
      child: Center(child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: MECard(
        boxBorder: Border.all(color: Colors.transparent),
        widget: METext(text: "ini tes")),
      )));
    },);
  }

  WidgetbookUseCase meCardBookShadow(){
    return WidgetbookUseCase(name: "MECardShadow", builder: (context) {
      return Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
      child: Center(child: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: MECardShadow(
        blurRadius: context.knobs.double.slider(label: "blurRadius",max: 20,min: 1,initialValue: 1),
        shadowColor: context.knobs.list(label: 'shadowColor', options: colorOption),
        shadowHorizontal: context.knobs.double.input(label:'shadowHorizontal',initialValue: 4),
        shadowVertical: context.knobs.double.input(label: 'shadowVertical',initialValue: 0),
        widget: METext(text: "ini tes")),
      )));
    },);
  }
}

class MEDeliveryCard extends StatelessWidget {
  const MEDeliveryCard({
    super.key,
    required this.destinationName,
    required this.statusName,
    required this.statusColor,
    required this.destinationAddress,
    required this.departureTime,
  });

  final String destinationName;
  final String statusName;
  final Color  statusColor;
  final String destinationAddress;
  final String departureTime;

  @override
  Widget build(BuildContext context) {
    return MECard(widget: 
      Container(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                METext(text: destinationName,fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xFF0D4491)),
                MEStatusLabel(label: statusName,bgColor: statusColor.withOpacity(0.07),ftColor: statusColor),
                
              ],
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(width: 220,child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                METext(text: destinationAddress,height: 1.5,color: Color(0xFF344264),),
                SizedBox(height: 8,),
                METext(text: departureTime,height: 1.5,color: Color(0xFF67718B),),
              ],
            )),
          ),
        ],
      ),)
    );
  }
}


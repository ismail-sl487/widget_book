import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/card_widget.dart';
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
        builder: (p0) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: MECard(widget: 
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
                )
              )),
            ],
          ),
        ));
  }

  WidgetbookUseCase deliveryCardBook() {
    return WidgetbookUseCase(
        name: "MEDeliveryCard",
        builder: (p0) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: DeliveryCard(
                departureTime: p0.knobs.string(label: "departureTime",initialValue: "19 Jul 2023 15:00"),
                destinationAddress: p0.knobs.string(label: "destinationAddress",initialValue: "Jl. Diponegoro No. FA-45, Surabaya, Jawa Timur, Indonesia"),
                destinationName: p0.knobs.string(label: "destinationName",initialValue: "Gudang Airlangga"),
                statusName: p0.knobs.string(label: "statusName",initialValue: "Ambil"),
                statusColor: p0.knobs.list(label: "statusColor", options: colorOption),
              )),
            ],
          ),
        ));
  }
}

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({
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
                MCText(text: destinationName,fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xFF0D4491)),
                MCStatusLabel(label: statusName,bgColor: statusColor.withOpacity(0.07),ftColor: statusColor),
                
              ],
            ),
          ),
          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(width: 220,child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MCText(text: destinationAddress,height: 1.5,color: Color(0xFF344264),),
                SizedBox(height: 8,),
                MCText(text: departureTime,height: 1.5,color: Color(0xFF67718B),),
              ],
            )),
          ),
        ],
      ),)
    );
  }
}


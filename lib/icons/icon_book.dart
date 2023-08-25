import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/constant.dart';
import 'package:mceasy_widget/shared/mceasy_icons.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:widgetbook/widgetbook.dart';

class IconStyler {

  List<Widget> getIcon(){
    List<Padding> tempData =[];
    for (var i = 0; i < listIcons.length; i++) {
      tempData.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(listIcons[i]),
            METext(text: 'fill_Pin_time')
          ],
        ),
      ),);
    }
    return tempData;
  }

  WidgetbookUseCase deliveryCardBook() {
    return WidgetbookUseCase(
        name: "MEIcon",
        builder: (p0) => Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Wrap(
            children: [
             ...getIcon() 
            ],
          ),
        )
    );
}
}
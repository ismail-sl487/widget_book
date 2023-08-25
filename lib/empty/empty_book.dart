import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/empty_widget.dart';
import 'package:widgetbook/widgetbook.dart';

class EmpptyStyler {
  WidgetbookUseCase emptyBook() {
    return WidgetbookUseCase(
        name: "MEEmptyWidget",
        builder: (context) => Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: MEEmptyWidget(
            title: context.knobs.string(label: "title",initialValue: "Belum ada penugasan selesai",description: "Merubah title atas",),
            subTitle: context.knobs.string(label:"subtitle",initialValue: "Jalankan penugasan Anda terlebih dahulu,",description: "Merubaha title bawah",),
          ))
        );
    }
}

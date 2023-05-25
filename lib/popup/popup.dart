import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:widget_book/main.dart';
import 'package:widget_book/shared/popup_widget.dart';
import 'package:widget_book/theme.dart';
import 'package:widgetbook/widgetbook.dart';

import '../shared/text_widget.dart';

class PopupStyler {
  WidgetbookUseCase versionUpatePopup(){
    return WidgetbookUseCase(name: "MCDialogVersion", builder: (context) => 
      MCDialogVersion(
        isForcedUpdate: context.knobs.boolean(label: "isForcedUpdate",description: "Tampilan untuk forced update atau tidak"),
        title: context.knobs.text(label: "title",description: "untuk memberikan judul pada tampilan update",initialValue: 'Aplikasi merekomendasikan Anda untuk memperbarui aplikasi ke versi terbaru. Anda dapat terus menggunakan aplikasi saat mengunduh pembaruan.'),
        color: context.knobs.options(label: 'secondaryColor', options: colorOption),
      ),
    );
  }


  WidgetbookUseCase failedDialog(){
    return WidgetbookUseCase(name: "MCFailedDialog", builder: (p0) => 
      MCFailedDialog(
        backgroundColor: p0.knobs.options(label: "secondaryColor", options: colorOption,description: "Merubah warna background icon"),
        backgroundOpacity: p0.knobs.options(label: "secondaryColor", options: colorOption,description: "Merubah warna background icon").withOpacity(0.2),
        icon:  Icon(p0.knobs.options(label: "icon", options: const[
          Option(label: "close", value: EvaIcons.close),
          Option(label: "alert", value: EvaIcons.alertCircle),
          Option(label: "stop", value: EvaIcons.stopCircle),
        ]),
          color: Colors.white, size: p0.knobs.number(label: "iconSize",initialValue: 50).toDouble()),
          title: p0.knobs.text(label: "title",initialValue: "Failed"),
          subtitle: p0.knobs.text(label: "subtitle",initialValue: "Gagal melakukan pengiriman data \n Mohon coba kembali"),
      ),
    );
  }

}




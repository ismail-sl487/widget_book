import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/popup_widget.dart';
import 'package:mceasy_widget/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class PopupStyler {
  WidgetbookUseCase versionUpatePopup() {
    return WidgetbookUseCase(
      name: "MEDialogVersion",
      builder: (context) => MEDialogVersion(
        isForcedUpdate: context.knobs.boolean(
            label: "isForcedUpdate",
            description: "Tampilan untuk forced update atau tidak"),
        title: context.knobs.string(
            label: "title",
            description: "untuk memberikan judul pada tampilan update",
            initialValue:
                'Aplikasi merekomendasikan Anda untuk memperbarui aplikasi ke versi terbaru. Anda dapat terus menggunakan aplikasi saat mengunduh pembaruan.'),
        color: context.knobs
            .list(label: 'secondaryColor', options: colorOption),
      ),
    );
  }

  WidgetbookUseCase failedDialog() {
    return WidgetbookUseCase(
      name: "MEFailedDialog",
      builder: (p0) => MEFailedDialog(
        backgroundColor: p0.knobs.list(
            label: "secondaryColor",
            options: colorOption,
            description: "Merubah warna background icon"),
        backgroundOpacity: p0.knobs
            .list(
                label: "secondaryColor",
                options: colorOption,
                description: "Merubah warna background icon")
            .withOpacity(0.2),
        icon: Icon(
            p0.knobs.list(label: "icon", options: const [
              EvaIcons.close,
              EvaIcons.alertCircle,
              EvaIcons.stopCircle,
            ]),
            color: Colors.white,
            size: p0.knobs
                .double.input(label: "iconSize", initialValue: 50)
                .toDouble()),
        title: p0.knobs.string(label: "title", initialValue: "Failed"),
        subtitle: p0.knobs.string(
            label: "subtitle",
            initialValue:
                "Gagal melakukan pengiriman data \n Mohon coba kembali"),
      ),
    );
  }
}

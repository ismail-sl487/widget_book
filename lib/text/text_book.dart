import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/shared/toggle_widget.dart';
import 'package:mceasy_widget/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class TextStyler {
  WidgetbookUseCase text() {
    return WidgetbookUseCase(
      name: 'METext',
      builder: (context) => Container(
        width: double.infinity,
              height: double.infinity,
              color: Colors.white,
        child: Center(
          child: Text(
            context.knobs.string(
              initialValue: "Lorem ipsum dolor sit amet",
              label: "text",
            ),
            style: TextStyle(
              fontWeight: context.knobs.list(
                  label: "fontWeight",
                  options: textWeight,
                  description: "merubah ketebalan font"),
              color: context.knobs.list(
                  label: "fontColor",
                  description: "Mengganti warna pada font",
                  options: colorOption),
              fontSize: context.knobs
                  .double.input(label: "fontSize", description: "Merubah ukuran font")
                  .toDouble(),
              letterSpacing: context.knobs.double.slider(
                  label: "leterSpaccing",
                  description: "Menambah jarak spasi pada text",
                  initialValue: 0.5,
                  min: 0,
                  max: 5),
              height: context.knobs.double.slider(
                  label: "height",
                  description: "Menambah jarak kebawah antar text",
                  initialValue: 1,
                  min: 0,
                  max: 5),
              overflow: context.knobs.list(label: "Overflow", options: const [
                TextOverflow.clip,
                TextOverflow.ellipsis,
                TextOverflow.fade,
                TextOverflow.visible,
              ]),
            ),
            maxLines: context.knobs
                .double.input(
                    label: "maxLine",
                    description: "Melakukan setting maksimal baris",
                    initialValue: 15)
                .toInt(),
          ),
        ),
      ),
    );
  }

  WidgetbookUseCase textRow() {
    return WidgetbookUseCase(
      name: 'METextRow',
      builder: (context) => Container(
        width: double.infinity,
              height: double.infinity,
              color: Colors.white,
        child: Center(
          child: Row(
            mainAxisAlignment:
                context.knobs.list(label: "mainAxisAligment", options: const [
                MainAxisAlignment.center,
                MainAxisAlignment.end,
                MainAxisAlignment.spaceAround,
                MainAxisAlignment.spaceBetween,
                MainAxisAlignment.spaceEvenly,
                MainAxisAlignment.start,
            ]),
            children: [
              METext(
                text: context.knobs.string(
                    label: "LText",
                    description: "Untuk mentukan isi text",
                    initialValue: "Perusahaan"),
                color: context.knobs.list(
                    label: "LColor",
                    options: colorOption,
                    description: "Mengubah warna font"),
                fontSize: context.knobs
                    .double.slider(label: "LFontSize", initialValue: 12, min: 9, max: 26),
                fontWeight: context.knobs
                    .list(label: "LTextWeight", options: textWeight),
              ),
              SizedBox(
                width: context.knobs
                    .double.input(
                        label: "spacing",
                        description: "Memberi jarak antar text",
                        initialValue: 12)
                    .toDouble(),
              ),
              METext(
                text: context.knobs.string(
                    label: "RText",
                    description: "Untuk mentukan isi text",
                    initialValue: " : PT ABC mantab"),
                color: context.knobs.list(
                    label: "RColor",
                    options: colorOption,
                    description: "Mengubah warna font"),
                fontSize: context.knobs
                    .double.slider(label: "RFontSize", initialValue: 12, min: 9, max: 26),
                fontWeight: context.knobs
                    .list(label: "RTextWeight", options: textWeight),
              ),
            ],
          ),
        ),
      ),
    );
  }

  WidgetbookUseCase textToggle() {
    return WidgetbookUseCase(
      name: "METextToggle",
      builder: (p0) => Container(
        width: double.infinity,
              height: double.infinity,
              color: Colors.white,
        child: Center(
          child: METextToggle(
              title: p0.knobs.string(
                  label: "label",
                  description: "Merubah judul label toggle",
                  initialValue: "Example Toggle"),
              onChanged: (result) {
                result =
                    p0.knobs.boolean(label: "value", description: "Merubah toggle");
              },
              value:
                  p0.knobs.boolean(label: "value", description: "Merubah toggle")),
        ),
      ),
    );
  }
}

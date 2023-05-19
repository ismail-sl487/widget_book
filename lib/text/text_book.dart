import 'package:flutter/material.dart';
import 'package:widget_book/shared/text_widget.dart';
import 'package:widget_book/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class TextStyler {
  WidgetbookUseCase text() {
    return WidgetbookUseCase(
        name: 'CustomText',
        builder: (context) => Text(context.knobs.text(initialValue: "Lorem ipsum dolor sit amet",label: "label",),
        style: TextStyle(
          fontWeight: context.knobs.options(label: "fontWeight", 
          options:textWeight,description: "merubah ketebalan font"),
          color: context.knobs.options(
            label: "fontColor",
            description: "Mengganti warna pada font",
            options: colorOption
          ),
          fontSize: context.knobs.number(label: "fontSize",description: "Merubah ukuran font").toDouble(),
          letterSpacing: context.knobs.slider(label: "leterSpaccing",description: "Menambah jarak spasi pada text",initialValue: 0.5,min: 0,max: 5),
          height: context.knobs.slider(label: "height",description: "Menambah jarak kebawah antar text",initialValue: 1,min: 0,max: 5),
          overflow: context.knobs.options(label: "Overflow", options:const [
            Option(label: "clip", value: TextOverflow.clip),
            Option(label: "ellipsis", value: TextOverflow.ellipsis),
            Option(label: "fade", value: TextOverflow.fade),
            Option(label: "visible", value: TextOverflow.visible),
          ]),
          
        ),
        maxLines: context.knobs.number(label: "maxLine",description: "Melakukan setting maksimal baris",initialValue: 15).toInt(),
      ),
    );
  }


  WidgetbookUseCase textRow() {
    return WidgetbookUseCase(
        name: 'TextRow',
        builder: (context) => 
        Row(
          mainAxisAlignment: context.knobs.options(label: "mainAxisAligment", options: const [
            Option(label: "center", value: MainAxisAlignment.center),
            Option(label: "end", value: MainAxisAlignment.end),
            Option(label: "spaceAround", value: MainAxisAlignment.spaceAround),
            Option(label: "spaceBetween", value: MainAxisAlignment.spaceBetween),
            Option(label: "spaceEvenly", value: MainAxisAlignment.spaceEvenly),
            Option(label: "start", value: MainAxisAlignment.start),
          ]),
          children: [
            WidgetText(
              text: context.knobs.text(label: "LText",description: "Untuk mentukan isi text",initialValue: "Perusahaan"),
              color: context.knobs.options(label: "LColor", options: colorOption,description: "Mengubah warna font"),
              fontSize: context.knobs.slider(label: "LFontSize",initialValue: 12,min: 9,max: 26),
              fontWeight: context.knobs.options(label: "LTextWeight", options: textWeight),
            ),
            SizedBox(width: context.knobs.number(label: "spacing",description: "Memberi jarak antar text",initialValue: 12 ).toDouble(),),
            WidgetText(
              text: context.knobs.text(label: "RText",description: "Untuk mentukan isi text",initialValue: " : PT ABC mantab"),
              color: context.knobs.options(label: "RColor", options: colorOption,description: "Mengubah warna font"),
              fontSize: context.knobs.slider(label: "RFontSize",initialValue: 12,min: 9,max: 26),
              fontWeight: context.knobs.options(label: "RTextWeight", options: textWeight),
            ),
          ],
        ),
    );
  }
}
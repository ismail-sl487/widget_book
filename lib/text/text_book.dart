import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class TextStyler {
  WidgetbookUseCase text() {
    return WidgetbookUseCase(
        name: 'CustomText',
        builder: (context) => Text(context.knobs.text(initialValue: "Lorem ipsum dolor sit amet",label: "label",),
        style: TextStyle(
          fontWeight: context.knobs.options(label: "fontWeight", 
          options:const [
            Option(label: "100", value: FontWeight.w100),
            Option(label: "200", value: FontWeight.w200),
            Option(label: "300", value: FontWeight.w300),
            Option(label: "400", value: FontWeight.w400),
            Option(label: "500", value: FontWeight.w500),
            Option(label: "600", value: FontWeight.w600),
            Option(label: "700", value: FontWeight.w700),
          ],description: "merubah ketebalan font"),
          color: context.knobs.options(
            label: "fontColor",
            description: "Mengganti warna pada font",
            options: const [
              Option<Color>(label: "#FFAAAA",value: Colors.black54),
              Option<Color>(label: "#0D4491",value: Color(0xFF0D4491)),
              Option<Color>(label: "#F64A33",value: Color(0XFFF64A33)),
              Option<Color>(label: "#439677",value: Color(0XFF439677)),
            ]
          ),
          fontSize: context.knobs.number(label: "fontSize",description: "Merubah ukuran font").toDouble()
        ),
      ),
    );
  }
}
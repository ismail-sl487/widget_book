import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class ButtonStyler {
  Colors? secondaryColor;

  WidgetbookUseCase button() {
    return WidgetbookUseCase(
        name: 'CustomButton',
        builder: (context) => ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.knobs.number(initialValue: 6,label: "borderRadius",description: "Membuat radius pada button").toDouble()))),
              backgroundColor: MaterialStateProperty.all(context.knobs.options(
                label: "bgColor",
                description: "Mengganti warna pada background button",
                options: const [
                  Option<Color>(label: "#0D4491",value: Color(0xFF0D4491)),
                  Option<Color>(label: "#F64A33",value: Color(0XFFF64A33)),
                  Option<Color>(label: "#439677",value: Color(0XFF439677)),
                  Option<Color>(label: "#FFFFFF",value: Color(0XFFFFFFFF)),
                ]
              )
            ),
          ),
          onPressed: () {},
          child: Text(context.knobs.text(initialValue: "Example Button",label: "label",description: "Berfungsi untuk membuat label pada tombol"),
              style: TextStyle(color: context.knobs.options(
                  label: "fontColor",
                  description: "Mengganti warna pada font button",
                  options: const [
                    Option<Color>(label: "#FFFFFF",value: Color(0XFFFFFFFF)),
                    Option<Color>(label: "#0D4491",value: Color(0xFF0D4491)),
                    Option<Color>(label: "#F64A33",value: Color(0XFFF64A33)),
                    Option<Color>(label: "#439677",value: Color(0XFF439677)),
                  ]
                )
              )
            ),
        ),
      );
  }

  WidgetbookUseCase outlineButton() {
    return WidgetbookUseCase(
        name: 'CustomOutlineButton',
        builder: (context) => OutlinedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(context.knobs.number(initialValue: 6,label: "borderRadius",description: "Membuat radius pada button").toDouble()))),
            side: MaterialStateProperty.all(
              BorderSide(
                  color: context.knobs.options(
                  label: "secondaryColor",
                  description: "Mengganti warna pada border button",
                  options: const [
                    Option<Color>(label: "#0D4491",value: Color(0xFF0D4491)),
                    Option<Color>(label: "#F64A33",value: Color(0XFFF64A33)),
                    Option<Color>(label: "#439677",value: Color(0XFF439677)),
                  ]
                ), width: 1.0, style: BorderStyle.solid),
            ),
          ),
          onPressed: () {},
          child: Text(context.knobs.text(initialValue: "Example Button",label: "label",description: "Berfungsi untuk membuat label pada tombol"),
              style: TextStyle(color: context.knobs.options(
                  label: "fontColor",
                  description: "Mengganti warna pada font button",
                  options: const [
                    Option<Color>(label: "#0D4491",value: Color(0xFF0D4491)),
                    Option<Color>(label: "#F64A33",value: Color(0XFFF64A33)),
                    Option<Color>(label: "#439677",value: Color(0XFF439677)),
                  ]
                )
              )
            ),
        ),
      );
  }
}


  
  
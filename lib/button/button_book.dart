import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class ButtonStyler {
  Colors? secondaryColor;

  WidgetbookUseCase button() {
    return WidgetbookUseCase(
      name: 'MCButton',
      builder: (context) => ElevatedButton.icon(
        icon: context.knobs.boolean(
                label: "icon",
                description: "Untuk menampilkan icon (Non-Param)")
            ? Icon(
                context.knobs.options(label: "iconButton", options: iconTheme),
                color: context.knobs.options(
                    label: "secondaryColor",
                    description: "Mengganti warna pada font button",
                    options: const [
                      Option<Color>(label: "#FFFFFF", value: Color(0xFFFFFFFF)),
                      Option<Color>(label: "#0D4491", value: Color(0xFF0D4491)),
                      Option<Color>(label: "#F64A33", value: Color(0XFFF64A33)),
                      Option<Color>(label: "#439677", value: Color(0XFF439677)),
                    ]),
              )
            : const SizedBox(),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.only(
              top: context.knobs.slider(
                  label: "verticalPading",
                  initialValue: 14,
                  description: "Merubah ukuran padding vertikal",
                  min: 10,
                  max: 50),
              bottom: context.knobs.slider(
                  label: "verticalPading",
                  initialValue: 14,
                  description: "Merubah ukuran padding vertikal",
                  min: 10,
                  max: 50),
              right: 15,
              left: 8)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.knobs
                  .number(
                      initialValue: 6,
                      label: "borderRadius",
                      description: "Membuat radius pada button")
                  .toDouble()))),
          backgroundColor: MaterialStateProperty.all(context.knobs.options(
              label: "bgColor",
              description: "Mengganti warna pada background button",
              options: colorOption)),
        ),
        onPressed: () {},
        label: MCText(
            text: context.knobs.text(
                initialValue: "Example Button",
                label: "label",
                description: "Berfungsi untuk membuat label pada tombol"),
            color: context.knobs.options(
                label: "secondaryColor",
                description: "Mengganti warna pada font button",
                options: const [
                  Option<Color>(label: "#FFFFFF", value: Color(0xFFFFFFFF)),
                  Option<Color>(label: "#0D4491", value: Color(0xFF0D4491)),
                  Option<Color>(label: "#F64A33", value: Color(0XFFF64A33)),
                  Option<Color>(label: "#439677", value: Color(0XFF439677)),
                ])),
      ),
    );
  }

  WidgetbookUseCase outlineButton() {
    return WidgetbookUseCase(
      name: 'MCButtonOutline',
      builder: (context) => OutlinedButton.icon(
        icon: context.knobs.boolean(
                label: "icon",
                description: "Untuk menampilkan icon (Non-Param)")
            ? Icon(
                context.knobs.options(label: "iconButton", options: iconTheme),
                color: context.knobs.options(
                    label: "secondaryColor",
                    description: "Mengganti warna pada font button",
                    options: const [
                      Option<Color>(label: "#FFFFFF", value: Color(0xFFFFFFFF)),
                      Option<Color>(label: "#0D4491", value: Color(0xFF0D4491)),
                      Option<Color>(label: "#F64A33", value: Color(0XFFF64A33)),
                      Option<Color>(label: "#439677", value: Color(0XFF439677)),
                    ]),
              )
            : const SizedBox(),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.only(
              top: context.knobs.slider(
                  label: "verticalPading",
                  initialValue: 14,
                  description: "Merubah ukuran padding vertikal",
                  min: 10,
                  max: 50),
              bottom: context.knobs.slider(
                  label: "verticalPading",
                  initialValue: 14,
                  description: "Merubah ukuran padding vertikal",
                  min: 10,
                  max: 50),
              right: 15,
              left: 8)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.knobs
                  .number(
                      initialValue: 6,
                      label: "borderRadius",
                      description: "Membuat radius pada button")
                  .toDouble()))),
          side: MaterialStateProperty.all(
            BorderSide(
                color: context.knobs.options(
                    label: "secondaryColor",
                    description: "Mengganti warna pada border button",
                    options: colorOption),
                width: 1.0,
                style: BorderStyle.solid),
          ),
        ),
        onPressed: () {},
        label: Text(
            context.knobs.text(
                initialValue: "Example Button",
                label: "label",
                description: "Berfungsi untuk membuat label pada tombol"),
            style: TextStyle(
                color: context.knobs.options(
                    label: "secondaryColor",
                    description: "Mengganti warna pada font button",
                    options: colorOption))),
      ),
    );
  }
}

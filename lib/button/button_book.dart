import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class ButtonStyler {
  Colors? secondaryColor;

  WidgetbookUseCase button() {
    return WidgetbookUseCase(
      name: 'MEButton',
      builder: (context) => Container(
        width: double.infinity,
              height: double.infinity,
              color: Colors.white,
        child: Center(
          child: ElevatedButton.icon(
            icon: context.knobs.boolean(
                    label: "icon",
                    description: "Untuk menampilkan icon (Non-Param)")
                ? Icon(
                    context.knobs.list(label: "iconButton", options: iconTheme),
                    color: context.knobs.list(
                        label: "secondaryColor",
                        description: "Mengganti warna pada font button",
                        options: const [
                          Color(0xFFFFFFFF),
                           Color(0xFF0D4491),
                          Color(0XFFF64A33),
                           Color(0XFF439677),
                        ]),
                  )
                : const SizedBox(),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.only(
                  top: context.knobs.double.slider(
                      label: "verticalPading",
                      initialValue: 14,
                      description: "Merubah ukuran padding vertikal",
                      min: 10,
                      max: 50),
                  bottom: context.knobs.double.slider(
                      label: "verticalPading",
                      initialValue: 14,
                      description: "Merubah ukuran padding vertikal",
                      min: 10,
                      max: 50),
                  right: 15,
                  left: 8)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.knobs
                      .double.input(
                          initialValue: 6,
                          label: "borderRadius",
                          description: "Membuat radius pada button")
                      .toDouble()))),
              backgroundColor: MaterialStateProperty.all(context.knobs.list(
                  label: "bgColor",
                  description: "Mengganti warna pada background button",
                  options: colorOption)),
            ),
            onPressed: () {},
            label: METext(
        
                text: context.knobs.string(
                    initialValue: "Example Button",
                    label: "label",
                    description: "Berfungsi untuk membuat label pada tombol"),
                color: context.knobs.list(
                    label: "secondaryColor",
                    description: "Mengganti warna pada font button",
                    options: const [
                      Color(0xFFFFFFFF),
                      Color(0xFF0D4491),
                      Color(0XFFF64A33),
                      Color(0XFF439677),
                    ])),
          ),
        ),
      ),
    );
  }

  WidgetbookUseCase outlineButton() {
    return WidgetbookUseCase(
      name: 'MEButtonOutline',
      builder: (context) => Container(
        width: double.infinity,
              height: double.infinity,
              color: Colors.white,
        child: Center(
          child: OutlinedButton.icon(
            icon: context.knobs.boolean(
                    label: "icon",
                    description: "Untuk menampilkan icon (Non-Param)")
                ? Icon(
                    context.knobs.list(label: "iconButton", options: iconTheme),
                    color: context.knobs.list(
                        label: "secondaryColor",
                        description: "Mengganti warna pada font button",
                        options: const [
                        Color(0xFFFFFFFF),
                        Color(0xFF0D4491),
                        Color(0XFFF64A33),
                        Color(0XFF439677),
                        ]),
                  )
                : const SizedBox(),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.only(
                  top: context.knobs.double.slider(
                      label: "verticalPading",
                      initialValue: 14,
                      description: "Merubah ukuran padding vertikal",
                      min: 10,
                      max: 50),
                  bottom: context.knobs.double.slider(
                      label: "verticalPading",
                      initialValue: 14,
                      description: "Merubah ukuran padding vertikal",
                      min: 10,
                      max: 50),
                  right: 15,
                  left: 8)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(context.knobs
                      .double.input(
                          initialValue: 6,
                          label: "borderRadius",
                          description: "Membuat radius pada button")
                      .toDouble()))),
              side: MaterialStateProperty.all(
                BorderSide(
                    color: context.knobs.list(
                        label: "secondaryColor",
                        description: "Mengganti warna pada border button",
                        options: colorOption),
                    width: 1.0,
                    style: BorderStyle.solid),
              ),
            ),
            onPressed: () {},
            label: Text(
                context.knobs.string(
                    initialValue: "Example Button",
                    label: "label",
                    description: "Berfungsi untuk membuat label pada tombol"),
                style: TextStyle(
                    color: context.knobs.list(
                        label: "secondaryColor",
                        description: "Mengganti warna pada font button",
                        options: colorOption))),
          ),
        ),
      ),
    );
  }
}

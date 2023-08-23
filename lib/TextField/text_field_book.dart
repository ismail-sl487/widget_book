import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/textfield_widget.dart';
import 'package:mceasy_widget/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class TextFieldStyler {
  WidgetbookUseCase textfieldBook() {
    return WidgetbookUseCase(
        name: "MCTextField",
        builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: SizedBox(
                width: context.knobs.double.slider(
                    label: "width",
                    description: "Mengubah panjang textfield",
                    initialValue: 300,
                    max: 1000,
                    min: 50),
                height: context.knobs.double.slider(
                    label: "height",
                    description: "Mengubah lebar textfield",
                    initialValue: 35,
                    max: 80,
                    min: 20),
                child: TextFormField(
                    enabled: context.knobs
                        .boolean(label: "enabled", initialValue: true),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5),
                      prefixIcon: Icon(
                        context.knobs.list(
                            label: "prefixIcon",
                            description: "Merubah icon pada prefix",
                            options: iconTheme),
                        size: context.knobs
                            .double.input(label: "preffixSizeIcon", initialValue: 12)
                            .toDouble(),
                      ),
                      suffixIcon: context.knobs.boolean(
                              label: "suffixIcon",
                              description:
                                  "Digunakan untuk membuat icon pada sisi kanan (non-param)")
                          ? IconButton(
                              onPressed: () {},
                              icon: Icon(
                                context.knobs.list(
                                    label: "label", options: iconTheme),
                                size: context.knobs
                                    .double.input(
                                        label: "suffixSizeIcon",
                                        initialValue: 12)
                                    .toDouble(),
                              ))
                          : const SizedBox(),
                      hintText: context.knobs.string(
                          label: "hintText",
                          description:
                              "Untuk menentukan placeholder pada textfield",
                          initialValue: "Placeholder..."),
                      hintStyle: const TextStyle(fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(context.knobs
                            .double.input(label: "borderRadius", initialValue: 6)
                            .toDouble()),
                        borderSide: BorderSide(
                          width: context.knobs
                              .double.input(initialValue: 80, label: "borderRadius")
                              .toDouble(),
                          // style: BorderStyle.none,
                        ),
                      ),
                    )),
              ),
            ));
  }

  WidgetbookUseCase textfieldBooknew() {
    return WidgetbookUseCase(
        name: "MCTextField",
        builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: SizedBox(
                  width: context.knobs.double.slider(
                      label: "width",
                      description: "Mengubah panjang textfield",
                      initialValue: 300,
                      max: 1000,
                      min: 50),
                  height: context.knobs.double.slider(
                      label: "height",
                      description: "Mengubah lebar textfield",
                      initialValue: 35,
                      max: 80,
                      min: 20),
                  child: MCTextfield(
                    enabled: context.knobs
                        .boolean(label: "enabled", initialValue: true),
                    hintText: context.knobs.string(
                        label: "hintText",
                        description:
                            "Untuk menentukan placeholder pada textfield",
                        initialValue: "Placeholder..."),
                    borderRadius: context.knobs
                        .double.input(label: "borderRadius", initialValue: 6)
                        .toDouble(),
                    prefixIcon: context.knobs
                        .list(label: "prefixIcon", options: iconTemp),
                    suffixIcon: context.knobs
                        .list(label: "suffixIcon", options: suffixIcon),
                  )),
            ));
  }

  WidgetbookUseCase textfieldBookBottomLine() {
    return WidgetbookUseCase(
        name: "McEasyTextFieldLine",
        builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: SizedBox(
                width: context.knobs.double.slider(
                    label: "width",
                    description: "Mengubah panjang textfield",
                    initialValue: 300,
                    max: 1000),
                height: context.knobs.double.slider(
                    label: "height",
                    description: "Mengubah lebar textfield",
                    initialValue: 35,
                    max: 80,
                    min: 20),
                child: TextFormField(
                    decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: context.knobs.list(
                            label: "enableBorderColor",
                            description:
                                "Mengganti warna pada border ketika aktif",
                            options: colorOption)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: context.knobs.list(
                            label: "disableBorderColor",
                            description:
                                "Mengganti warna pada border ketika tidak aktif",
                            options: colorOption)),
                  ),
                )),
              ),
            ));
  }
}

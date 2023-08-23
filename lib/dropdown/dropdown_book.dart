import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:mceasy_widget/main.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/shared/textfield_widget.dart';
import 'package:mceasy_widget/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class DropdownStlyer {
  List<Widget> getData({int dataCount = 0}) {
    List<Widget> widget = [];
    if (dataCount <= 0) {
      widget.add(const SizedBox(child: MCText(text: "Data Not Found")));
    } else {
      for (var i = 0; i < dataCount; i++) {
        widget.add(Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: MCText(text: "Text", color: primaryColor),
                  ),
                ],
              ),
            ),
            const Divider()
          ],
        ));
      }
    }
    return widget;
  }

  WidgetbookUseCase dropdownBook() {
    return WidgetbookUseCase(
      name: "MECDropdown",
      builder: (p0) => PopupMenuItem(
        enabled: false, // DISABLED THIS ITEM
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width:
                  MediaQuery.of(navigatorKey.currentState!.context).size.width,
              height: 40,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFieldStyles(
                      hintName: "Cari",
                      onChange: (String newValue) {},
                    ),
                  ),
                  const Icon(EvaIcons.search, size: 15)
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ...getData(
                dataCount: p0.knobs
                    .double.slider(
                        label: "data",
                        description:
                            "Untuk mengeteahui apakah sedang kosong atau tidak",
                        min: 0,
                        max: 5,
                        initialValue: 0)
                    .toInt()),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(navigatorKey.currentState!.context)
                    .size
                    .width,
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Visibility(
                  visible: p0.knobs
                          .double.slider(
                              label: "data",
                              description:
                                  "Untuk mengeteahui apakah sedang kosong atau tidak",
                              min: 0,
                              max: 5,
                              initialValue: 0)
                          .toInt() !=
                      0,
                  child: const Center(child: MCText(text: "View All Result")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:widget_book/shared/text_widget.dart';
import 'package:widget_book/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class PermissionStyler {
  
  WidgetbookUseCase permissionBook(){
    return WidgetbookUseCase(name: "MEPermission", builder: (p0) => 
      SimpleDialog(
    contentPadding: const EdgeInsets.all(0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    children: [
      Container(
        decoration: BoxDecoration(
          color: p0.knobs.options(label: "secondaryColor", options: colorOption),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Icon(
          p0.knobs.options(label: "icon", options: iconTheme),
          color: Colors.white,
          size: 50,
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        child: MCText(
          text: p0.knobs.text(label: "label",description: "Memberikan title pada popup",initialValue: "This app need permission location. Please choose allow all the time in permission location"),
          fontSize: 16,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 12.0, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () async {
                
              },
              child: const MCText(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                text: 'CANCEL',
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: p0.knobs.options(label: "secondaryColor", options: colorOption)),
              onPressed: () async {
               
              },
              child: const SizedBox(
                child: MCText(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  text: 'ENABLE',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      )
    ],
  )
    );
  }

}
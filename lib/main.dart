import 'dart:html';

import 'package:flutter/material.dart';
import 'package:widget_book/TextField/text_field_book.dart';
import 'package:widget_book/button/button_book.dart';
import 'package:widget_book/driver_app/permission_book.dart';
import 'package:widget_book/dropdown/dropdown_book.dart';
import 'package:widget_book/notification/notification_book.dart';
import 'package:widget_book/popup/popup.dart';
import 'package:widget_book/text/text_book.dart';
import 'package:widgetbook/widgetbook.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HotreloadWidgetbook(),
    );
  }
}

class HotreloadWidgetbook extends StatelessWidget {
  const HotreloadWidgetbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      categories: [
        WidgetbookCategory(
          name: 'Global Widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Buttons',
              useCases: [
                ButtonStyler().button(),
                ButtonStyler().outlineButton()
              ],
            ),
            WidgetbookComponent(
              name: 'Text',
              useCases: [
                TextStyler().text(),
                TextStyler().textRow(),
                TextStyler().textToggle(),
              ],
            ),
            WidgetbookComponent(
              name: 'TextField',
              useCases: [
                TextFieldStyler().textfieldBook(),
                TextFieldStyler().textfieldBookBottomLine(),
              ],
            ),
            
            WidgetbookComponent(
              name: 'Popup Dialog',
              useCases: [
                PopupStyler().versionUpatePopup(),
                PopupStyler().failedDialog(),
              ],
            ),
            WidgetbookComponent(
              name: 'Drop Down',
              useCases: [
                DropdownStlyer().dropdownBook()
              ],
            ),
            WidgetbookComponent(
              name: 'Foregorund Notification',
              useCases: [
                NotificationStyler().notificationBook()
              ],
            ),
          ],
        ),
        WidgetbookCategory(name: "Driver App ",widgets: [
          WidgetbookComponent(
              name: 'Permission',
              useCases: [
                PermissionStyler().permissionBook()
              ],
            ),
        ])
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: ThemeData.light(),
        ),
        WidgetbookTheme(
          name: 'Dark', 
          data: ThemeData.dark(),
        ),
      ],
      appInfo: AppInfo(name: 'McEasy Widget Book'),
    );
  }
}
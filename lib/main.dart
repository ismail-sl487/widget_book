import 'package:flutter/material.dart';
import 'package:mceasy_widget/avatar/avatar_book.dart';
import 'package:mceasy_widget/badge/badge_book.dart';
import 'package:mceasy_widget/card/card_book.dart';
import 'package:mceasy_widget/textfield/text_field_book.dart';
import 'package:mceasy_widget/button/button_book.dart';
import 'package:mceasy_widget/driver_app/permission_book.dart';
import 'package:mceasy_widget/dropdown/dropdown_book.dart';
import 'package:mceasy_widget/notification/notification_book.dart';
import 'package:mceasy_widget/popup/popup.dart';
import 'package:mceasy_widget/text/text_book.dart';
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
              name: 'Avatar',
              useCases: [AvatarStyler().avatarBook()],
            ),
            WidgetbookComponent(
              name: 'Badge',
              useCases: [
                BadgeStyler().badgeBook(),
                BadgeStyler().badgeLabelBook(),
              ],
            ),
            WidgetbookComponent(
              name: 'Card',
              useCases: [
                CardStyler().cardBook(),
                CardStyler().deliveryCardBook()
              ],
            ),
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
                TextFieldStyler().textfieldBooknew(),
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
              useCases: [DropdownStlyer().dropdownBook()],
            ),
            WidgetbookComponent(
              name: 'Foregorund Notification',
              useCases: [NotificationStyler().notificationBook()],
            ),
          ],
        ),
        WidgetbookCategory(name: "Driver App ", widgets: [
          WidgetbookComponent(
            name: 'Permission',
            useCases: [PermissionStyler().permissionBook()],
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

import 'package:flutter/material.dart';
import 'package:mceasy_widget/avatar/avatar_book.dart';
import 'package:mceasy_widget/badge/badge_book.dart';
import 'package:mceasy_widget/card/card_book.dart';
import 'package:mceasy_widget/empty/empty_book.dart';
import 'package:mceasy_widget/icons/icon_book.dart';
import 'package:mceasy_widget/snackbar/snackbar_book.dart';
import 'package:mceasy_widget/button/button_book.dart';
import 'package:mceasy_widget/dropdown/dropdown_book.dart';
import 'package:mceasy_widget/notification/notification_book.dart';
import 'package:mceasy_widget/popup/popup.dart';
import 'package:mceasy_widget/text/text_book.dart';
import 'package:mceasy_widget/text_field/text_field_book.dart';
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
    return Widgetbook.material(directories: [
      WidgetbookComponent(
        name: 'Empty Widget',
        useCases: [EmpptyStyler().emptyBook()],
      ),
      WidgetbookComponent(
        name: 'Icon',
        useCases: [IconStyler().deliveryCardBook()],
      ),
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
        name: 'Snackbar',
        useCases: [],
      ),
      WidgetbookComponent(
        name: 'Card',
        useCases: [
          CardStyler().cardBook(),
          CardStyler().deliveryCardBook(),
          CardStyler().meCardBook(),
          CardStyler().meCardBookShadow(),
        ],
      ),
      WidgetbookComponent(
        name: 'Buttons',
        useCases: [ButtonStyler().button(), ButtonStyler().outlineButton()],
      ),
      WidgetbookComponent(
        name: 'Text',
        useCases: [
          TextStyler().text(),
          TextStyler().textRow(),
          TextStyler().textToggle(),
          TextStyler().textExmple(),
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
        useCases: [DropdownStlyer().dropdownBook()],
      ),
      WidgetbookComponent(
          name: 'Foregorund Notification',
          useCases: [NotificationStyler().notificationBook()])
    ], addons: [
      DeviceFrameAddon(
        devices: [
          Devices.ios.iPhoneSE,
          Devices.ios.iPhone13,
        ],
        initialDevice: Devices.ios.iPhone13,
      ),
    ]);
  }
}

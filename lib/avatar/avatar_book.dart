import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/avatar_widget.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class AvatarStyler {
  Colors? secondaryColor;

  WidgetbookUseCase avatarBook() {
    return WidgetbookUseCase(
        name: 'MCAvatar', builder: (context) {
          return Center(child: 
            MCAvatar(
              images: context.knobs.string(label: 'images',description: "menggunakan URL atau images lokal \n\nEx : assets/images/avatar.png "),
              badgePositioned: context.knobs.list(label: 'positioned', options: badgePosition),
              bgcolor: context.knobs.list(label: 'bgColor', options: colorOption),
              initial: context.knobs.string(label: 'initial',initialValue: 'PL'),
              badgeColor: context.knobs.list(label: 'badgeColor', options: colorOption),
              avatarSize: context.knobs.list(label: 'avatarSize', options: avatarSizer),
            )
          );
        });
  }
  
}

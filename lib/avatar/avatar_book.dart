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
              images: context.knobs.text(label: 'images',description: "menggunakan URL atau images lokal \n\nEx : assets/images/avatar.png "),
              badgePositioned: context.knobs.options(label: 'positioned', options: badgePosition),
              bgcolor: context.knobs.options(label: 'bgColor', options: colorOption),
              initial: context.knobs.text(label: 'initial',initialValue: 'PL'),
              badgeColor: context.knobs.options(label: 'badgeColor', options: colorOption),
              avatarSize: context.knobs.options(label: 'avatarSize', options: avatarSizer),
            )
          );
        });
  }
  
}

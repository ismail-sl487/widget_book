import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/avatar_widget.dart';
import 'package:mceasy_widget/shared/badge_widget.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class BadgeStyler {
  Colors? secondaryColor;

  WidgetbookUseCase badgeBook() {
    return WidgetbookUseCase(
        name: 'MCBadge', builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MCBadge(
                    labelSize: double.parse(context.knobs.text(label: "labelSize",initialValue: "10")),
                    badgeSize: double.parse(context.knobs.text(label: "badgeSize" , initialValue: "30")),
                    positioned: context.knobs.options(label: 'positioned', options: badgePosition), 
                    badgecolor: context.knobs.options(label: 'badgecoloe', options: colorOption),
                    label: context.knobs.text(label: "label"),
                    labelColor: context.knobs.options(label: "labelColor", options: colorOption),
                  ),
                ],
              ),
            ],
          );
        });
  }

  WidgetbookUseCase badgeLabelBook() {
    return WidgetbookUseCase(
        name: 'MCBadgeLabel', builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MCBadgeLabel(
                    labelSize: double.parse(context.knobs.text(label: "labelSize",initialValue: "10")),
                    badgecolor: context.knobs.options(label: 'badgecoloe', options: colorOption),
                    label: context.knobs.text(label: "label"),
                    labelColor: context.knobs.options(label: "labelColor", options: colorOption),
                  ),
                ],
              ),
            ],
          );
        });
  }
  
}

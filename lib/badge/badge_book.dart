import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/badge_widget.dart';
import 'package:mceasy_widget/theme.dart';
import 'package:widgetbook/widgetbook.dart';

class BadgeStyler {
  Colors? secondaryColor;

  WidgetbookUseCase badgeBook() {
    return WidgetbookUseCase(
        name: 'MEBadge', builder: (context) {
          return Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MEBadge(
                      labelSize: double.parse(context.knobs.string(label: "labelSize",initialValue: "10")),
                      badgeSize: double.parse(context.knobs.string(label: "badgeSize" , initialValue: "30")),
                      positioned: context.knobs.list(label: 'positioned', options: badgePosition), 
                      badgecolor: context.knobs.list(label: 'badgecoloe', options: colorOption),
                      label: context.knobs.string(label: "label"),
                      labelColor: context.knobs.list(label: "labelColor", options: colorOption),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  WidgetbookUseCase badgeLabelBook() {
    return WidgetbookUseCase(
        name: 'MEBadgeLabel', builder: (context) {
          return Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MEBadgeLabel(
                      labelSize: double.parse(context.knobs.string(label: "labelSize",initialValue: "10")),
                      badgecolor: context.knobs.list(label: 'badgecoloe', options: colorOption),
                      label: context.knobs.string(label: "label"),
                      labelColor: context.knobs.list(label: "labelColor", options: colorOption),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
  
}

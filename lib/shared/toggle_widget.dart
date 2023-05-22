import 'package:flutter/material.dart';
import 'package:widget_book/shared/switch_toggle_widget.dart';
import 'package:widget_book/shared/text_widget.dart';
import 'package:widget_book/theme.dart';

class ToggleWidget extends StatelessWidget {
  ToggleWidget(
      {Key? key,
      required this.title,
      required this.onChanged,
      required this.value})
      : super(key: key);

  String title;
  Function(bool value) onChanged;
  bool value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 11),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: WidgetText(
              text: title,
              color: secondaryColor,
            ),
          ),
          SizedBox(
            width: 38,
            height: 24,
            child: FittedBox(
              fit: BoxFit.contain,
              child: CustomSwitch(
                value: value,
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

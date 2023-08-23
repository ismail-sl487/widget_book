// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/switch_toggle_widget.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/theme.dart';

class METextToggle extends StatelessWidget {
  METextToggle(
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
            child: METext(
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

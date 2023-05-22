import 'package:flutter/material.dart';
import 'package:widget_book/shared/text_widget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
        required this.onPress,
        required this.title,
        this.bgColor = Colors.white,
        this.borderColor = Colors.white,
        this.textColor = Colors.white,
        this.borderRadius = 50.0})
      : super(key: key);
  final Function() onPress;
  final String title;
  final double borderRadius;
  final Color bgColor, borderColor, textColor;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 13),
        ),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius))),
        side: MaterialStateProperty.all( BorderSide(color: borderColor, width: 1.0, style: BorderStyle.solid),),
        backgroundColor: MaterialStateProperty.all(bgColor),
      ),
      child: WidgetText(
        text: title,
        color: textColor,
      ),
    );
  }
}
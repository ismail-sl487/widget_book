import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/text_widget.dart';

class ExampleText extends StatelessWidget {
  const ExampleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        METext(
          text: "Lorem ipsum dolor sit amet",
          fontWeight: FontWeight.w400,
        ),
        METext(
          text: "Lorem ipsum dolor sit amet",
          fontWeight: FontWeight.w500,
        ),
        METext(
          text: "Lorem ipsum dolor sit amet",
          fontSize: 19,
          fontFamily: 'GothamProMed',
        ),
        METext(
          text: "Lorem ipsum dolor sit amet",
          fontWeight: FontWeight.w600,
          fontSize: 19,
        ),
      ],
    );
  }
}

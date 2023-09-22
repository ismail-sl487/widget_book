import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/text_widget.dart';
import 'package:mceasy_widget/shared/theme.dart';

class MEEmptyWidget extends StatelessWidget {
  const MEEmptyWidget({
    this.title = 'Tidak ada list Bag.',
    this.subTitle,
    this.widthImage = 120,
    this.image = 'assets/images/empty_state.png',
    Key? key,
  }) : super(key: key);

  final String? title,subTitle,image;
  final double widthImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .6,
      alignment: Alignment.center,
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(image!,width: widthImage),
      const SizedBox(
        height: 12,
      ),
      METext(
        text: title??'',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Color(0xFF344264),
      ),
      SizedBox(height: 8),
      METext(
        text: subTitle??'',
        fontSize: 14,
        color: Color(0xFF344264),
      )
    ],
      ),
    );
  }
}


class MEEmptyBoldWidged extends StatelessWidget {
  const MEEmptyBoldWidged({
    this.title = 'Tidak ada list Bag.',
    this.subTitle,
    this.widthImage = 120,
    this.image = 'assets/images/empty_state.png',
    this.children,
    Key? key,
  }) : super(key: key);

  final String? title,subTitle,image;
  final double widthImage;
  final List<InlineSpan>? children;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .6,
      alignment: Alignment.center,
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image!,width: widthImage,fit: BoxFit.cover),
        const SizedBox(
          height: 18,
        ),
        METext(
          text: title??'',
          fontSize: 18,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.start,
          color: const Color(0xFF344264),
        ),
        const SizedBox(height: 8),
        Center(
          child: RichText(
            textAlign: TextAlign.center,

            text: TextSpan(
            style: CommonTextStyle.style(heightSpacingText: 1.5,color: Pallets.navy80),
            children: children
          )),
        ),
      ],
      ),
    );
  }
}

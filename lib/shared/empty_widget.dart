import 'package:flutter/material.dart';
import 'package:mceasy_widget/shared/text_widget.dart';

class MEEmptyWidget extends StatelessWidget {
  const MEEmptyWidget({
    this.title = 'Tidak ada list Bag.',
    this.subTitle,
    Key? key,
  }) : super(key: key);

  final String? title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .6,
      alignment: Alignment.center,
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('assets/images/empty_state.png'),
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

import 'dart:ui';

import 'package:widgetbook/widgetbook.dart';

const primaryColor = Color(0xFF0D4491);
var darkBlueColor = const Color(0xFF0C4491);
const secondaryColor = Color(0xff01133D);



 var colorOption = const[
    Option<Color>(label: "#0D4491",value: Color(0xFF0D4491)),
    Option<Color>(label: "#F64A33",value: Color(0XFFF64A33)),
    Option<Color>(label: "#439677",value: Color(0XFF439677)),
  ];

var textWeight = const [
  Option(label: "100", value: FontWeight.w100),
  Option(label: "200", value: FontWeight.w200),
  Option(label: "300", value: FontWeight.w300),
  Option(label: "400", value: FontWeight.w400),
  Option(label: "500", value: FontWeight.w500),
  Option(label: "600", value: FontWeight.w600),
  Option(label: "700", value: FontWeight.w700),
];
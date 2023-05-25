import 'dart:ui';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
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

var iconTemp = const [
  Option(label: "none", value: null),
  Option(label: "eye", value: Icon(Icons.visibility_off_outlined))
];
var suffixIcon =  [
  const Option(label: "none", value: null),
  Option(label: "eye", value: IconButton(onPressed: () {} ,icon: const Icon(Icons.visibility_off_outlined))),
  Option(label: "alert", value: IconButton(onPressed: () {} ,icon: const Icon(EvaIcons.stopCircle))),
  Option(label: "GPS", value: IconButton(onPressed: () {} ,icon: const Icon(Icons.gps_fixed_outlined)))
];

var iconTheme = const[
  Option(label: "close", value: EvaIcons.close),
  Option(label: "alert", value: EvaIcons.alertCircle),
  Option(label: "stop", value: EvaIcons.stopCircle),
  Option(label: "key", value: Icons.vpn_key_outlined),
  Option(label: "GPS", value: Icons.gps_fixed_outlined),
  Option(label: "eye", value: Icons.visibility_off_outlined)
];
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

const primaryColor = Color(0xFF0D4491);
var darkBlueColor = const Color(0xFF0C4491);
const secondaryColor = Color(0xff01133D);

enum PositionBadge{
  bottomright,bottomLeft,topLeft,topRight
}

enum AvatarSize{
 extraLarge,large,medium,small;
}


//TODO: JADIKAN DART 3 GUYS

double getAvatarSize({required AvatarSize size}){
  switch (size) {
    case AvatarSize.small:
      return 34;
    case AvatarSize.medium:
      return 48;
    case AvatarSize.large:
      return 70;
    case AvatarSize.extraLarge:
      return 96;
    default:
      return 48;
  }
}

double avatarLabelSize({required AvatarSize size}){
  switch (size) {
    case AvatarSize.small:
      return 14;
    case AvatarSize.medium:
      return 18;
    case AvatarSize.large:
      return 26;
    case AvatarSize.extraLarge:
      return 42;
    default:
      return 18;
  }
}

double avatarbadgeSize({required AvatarSize size}){
  switch (size) {
    case AvatarSize.small:
      return 14;
    case AvatarSize.medium:
      return 18;
    case AvatarSize.large:
      return 24;
    case AvatarSize.extraLarge:
      return 30;
    default:
      return 18;
  }
}

//TODO ============================


var colorOption = const [
  Option<Color>(label: "#1C74DA", value: Color(0xFF1C74DA)),
  Option<Color>(label: "#0D4491", value: Color(0xFF0D4491)),
  Option<Color>(label: "#F64A33", value: Color(0XFFF64A33)),
  Option<Color>(label: "#439677", value: Color(0XFF439677)),
  Option<Color>(label: "#FFFFFF", value: Color(0xFFFFFFFF)),
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

var badgePosition = const [
  Option(label: 'topRight', value: PositionBadge.topRight),
  Option(label: 'topLeft', value: PositionBadge.topLeft),
  Option(label: 'bottomLeft', value: PositionBadge.bottomLeft),
  Option(label: 'bottomRight', value: PositionBadge.bottomright),
];

var avatarSizer = const [
  Option(label: 'small', value: AvatarSize.small),
  Option(label: 'medium', value: AvatarSize.medium),
  Option(label: 'large', value: AvatarSize.large),
  Option(label: 'extraLarge', value: AvatarSize.extraLarge),
];

var iconTemp = const [
  Option(label: "none", value: null),
  Option(label: "eye", value: Icon(Icons.visibility_off_outlined))
];
var suffixIcon = [
  const Option(label: "none", value: null),
  Option(
      label: "eye",
      value: IconButton(
          onPressed: () {}, icon: const Icon(Icons.visibility_off_outlined))),
  Option(
      label: "alert",
      value:
          IconButton(onPressed: () {}, icon: const Icon(EvaIcons.stopCircle))),
  Option(
      label: "GPS",
      value: IconButton(
          onPressed: () {}, icon: const Icon(Icons.gps_fixed_outlined)))
];

var iconTheme = const [
  Option(label: "close", value: EvaIcons.close),
  Option(label: "alert", value: EvaIcons.alertCircle),
  Option(label: "stop", value: EvaIcons.stopCircle),
  Option(label: "key", value: Icons.vpn_key_outlined),
  Option(label: "GPS", value: Icons.gps_fixed_outlined),
  Option(label: "eye", value: Icons.visibility_off_outlined)
];

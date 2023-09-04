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

enum CommonFontSize{
  regular,medium,bold
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

String setFontSize(FontWeight size){
  if (size == FontWeight.w500 || size == FontWeight.w600 || size == FontWeight.normal) {
    return 'GothamProMed';
  }else if (size == FontWeight.w700 || size == FontWeight.w800 || size == FontWeight.w900 || size == FontWeight.bold){
    return 'GothamProBold';
  }else{
    return 'GothamPro';
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
  Color(0xFF1C74DA),
  Color(0xFF0D4491),
  Color(0XFFF64A33),
  Color(0XFF439677),
  Color(0xFFFFFFFF),
];

var textWeight = const [
  FontWeight.w100,
  FontWeight.w200,
  FontWeight.w300,
  FontWeight.w400,
  FontWeight.w500,
  FontWeight.w600,
  FontWeight.w700,
];

var badgePosition = const [
  PositionBadge.topRight,
  PositionBadge.topLeft,
  PositionBadge.bottomLeft,
  PositionBadge.bottomright,
];

var avatarSizer = const [
  AvatarSize.small,
  AvatarSize.medium,
  AvatarSize.large,
  AvatarSize.extraLarge,
];

var iconTemp = const [
  null,
  Icon(Icons.visibility_off_outlined)
];
var suffixIcon = [
  null,
  IconButton(
          onPressed: () {}, icon: const Icon(Icons.visibility_off_outlined)),
  IconButton(onPressed: () {}, icon: const Icon(EvaIcons.stopCircle)),
  IconButton(
          onPressed: () {}, icon: const Icon(Icons.gps_fixed_outlined))
];

var iconTheme = const [
  EvaIcons.close,
  EvaIcons.alertCircle,
  EvaIcons.stopCircle,
  Icons.vpn_key_outlined,
  Icons.gps_fixed_outlined,
  Icons.visibility_off_outlined
];

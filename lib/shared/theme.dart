import 'package:flutter/material.dart';

enum ColorRole {
  success,
  canceled,
  warning,
  inProgress,
  draft,
  confirmed,
  scheduled,
  rescheduled,
}

class Pallets {
  //primary/blue
  ///0D4491
  static Color primaryBlue100 = const Color(0xFF0D4491);

  ///3D69A7
  static Color primaryBlue80 = const Color(0xFF3D69A7);

  ///6E8FBD
  static Color primaryBlue60 = const Color(0xFF6E8FBD);

  ///9EB4D3
  static Color primaryBlue40 = const Color(0xFF9EB4D3);

  ///C5D3E9
  static Color primaryBlue20 = const Color(0xFFC5D3E9);

  //secondary/blue
  ///1C74DA
  static Color secondaryBlue100 = const Color(0xFF1C74DA);

  ///478EE1
  static Color secondaryBlue80 = const Color(0xFF478EE1);

  ///72A8E9
  static Color secondaryBlue60 = const Color(0xFF72A8E9);

  ///9DC1F0
  static Color secondaryBlue40 = const Color(0xFF9DC1F0);

  ///DEEAFC
  static Color secondaryBlue10 = const Color(0xFFDEEAFC);

  //navy
  ///01133D
  static Color navy100 = const Color(0xFF01133D);

  ///344264
  static Color navy80 = const Color(0xFF344264);

  ///67718B
  static Color navy60 = const Color(0xFF67718B);

  ///99A1B1
  static Color navy40 = const Color(0xFF99A1B1);

  ///EBECEF
  static Color navy5 = const Color(0xFFEBECEF);

  //red
  ///F41D00
  static Color red100 = const Color(0xFFF41D00);

  ///F64A33
  static Color red80 = const Color(0xFFF64A33);

  ///F87766
  static Color red60 = const Color(0xFFF87766);

  ///FBA599
  static Color red40 = const Color(0xFFFBA599);

  ///FEE8E5
  static Color red5 = const Color(0xFFFEE8E5);

  //yellow
  ///FF8A00
  static Color yellow100 = const Color(0xFFFF8A00);

  ///FFA133
  static Color yellow80 = const Color(0xFFFFA133);

  ///FFB966
  static Color yellow60 = const Color(0xFFFFB966);

  ///FFD099
  static Color yellow40 = const Color(0xFFFFD099);

  ///FFF3E6
  static Color yellow10 = const Color(0xFFFFF3E6);

  //green
  ///137C55
  static Color green100 = const Color(0xFF137C55);

  ///429677
  static Color green80 = const Color(0xFF429677);

  ///71B099
  static Color green60 = const Color(0xFF71B099);

  ///A1CBBB
  static Color green40 = const Color(0xFFA1CBBB);

  ///E7F2EE
  static Color green10 = const Color(0xFFE7F2EE);

  //pink
  ///CC1D92
  static Color pink100 = const Color(0xFFCC1D92);

  ///D64AA8
  static Color pink80 = const Color(0xFFD64AA8);

  ///E077BE
  static Color pink60 = const Color(0xFFE077BE);

  ///EBA5D3
  static Color pink40 = const Color(0xFFEBA5D3);

  ///FAE8F4
  static Color pink10 = const Color(0xFFFAE8F4);

  //purple
  ///8F49DE
  static Color purple100 = const Color(0xFF8F49DE);

  ///A56DE5
  static Color purple80 = const Color(0xFFA56DE5);

  ///BC92EB
  static Color purple60 = const Color(0xFFBC92EB);

  ///D2B6F2
  static Color purple40 = const Color(0xFFD2B6F2);

  ///F4EDFC
  static Color purple10 = const Color(0xFFF4EDFC);

  //background
  ///FAFCFF
  static Color background = const Color(0xFFFAFCFF);

  //light blue
  ///E7ECF4
  static Color lightBlue = const Color(0xFFE7ECF4);

  (Color, Color) getColorRole(ColorRole colorRole) {
    return switch (colorRole) {
      ColorRole.success => (green100, green10),
      ColorRole.canceled => (red100, red5),
      ColorRole.warning => (yellow100, yellow10),
      ColorRole.inProgress => (
          Pallets.secondaryBlue100,
          Pallets.secondaryBlue10
        ),
      ColorRole.draft => (navy60, navy5),
      ColorRole.confirmed => (primaryBlue100, primaryBlue20),
      ColorRole.scheduled => (purple100, purple10),
      ColorRole.rescheduled => (pink100, pink10),
    };
  }
}



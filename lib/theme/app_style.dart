import 'package:flutter/material.dart';
import 'package:flutter_community_s_application2/core/app_export.dart';

class AppStyle {
  static TextStyle txtRobotoRegular16 = TextStyle(
    color: ColorConstant.bluegray400,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtInterSemiBold14 = TextStyle(
    color: ColorConstant.indigo800,
    fontSize: getFontSize(
      14,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtInterMedium145 = TextStyle(
    color: ColorConstant.bluegray901,
    fontSize: getFontSize(
      14.5,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  static TextStyle txtInterSemiBold13 = TextStyle(
    color: ColorConstant.bluegray900,
    fontSize: getFontSize(
      13,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtInterSemiBold18 = TextStyle(
    color: ColorConstant.gray900,
    fontSize: getFontSize(
      18,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtRobotoRegular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
}

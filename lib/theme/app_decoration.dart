import 'package:flutter/material.dart';
import 'package:flutter_community_s_application2/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBluegray100 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.bluegray100,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillIndigo800 => BoxDecoration(
        color: ColorConstant.indigo800,
      );
  static BoxDecoration get fillBlack9007f => BoxDecoration(
        color: ColorConstant.black9007f,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius customBorderBL55 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        55.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        55.00,
      ),
    ),
  );
}

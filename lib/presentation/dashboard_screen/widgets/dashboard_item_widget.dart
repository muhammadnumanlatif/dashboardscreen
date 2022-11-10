import '../controller/dashboard_controller.dart';
import '../models/dashboard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_community_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class DashboardItemWidget extends StatelessWidget {
  DashboardItemWidget(this.dashboardItemModelObj);

  DashboardItemModel dashboardItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              left: 23,
              top: 26,
              right: 23,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgUser,
              height: getSize(
                32.00,
              ),
              width: getSize(
                32.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 23,
              top: 21,
              right: 22,
              bottom: 19,
            ),
            child: Text(
              "lbl_who_s_who".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold13,
            ),
          ),
        ],
      ),
    );
  }
}

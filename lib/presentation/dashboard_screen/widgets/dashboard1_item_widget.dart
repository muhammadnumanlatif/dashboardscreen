import '../controller/dashboard_controller.dart';
import '../models/dashboard1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_community_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Dashboard1ItemWidget extends StatelessWidget {
  Dashboard1ItemWidget(this.dashboard1ItemModelObj);

  Dashboard1ItemModel dashboard1ItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 14,
          ),
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  124.00,
                ),
                width: getHorizontalSize(
                  143.00,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            8.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgImage10,
                          height: getVerticalSize(
                            124.00,
                          ),
                          width: getHorizontalSize(
                            143.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.black9007f,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Container(
                          height: getVerticalSize(
                            124.00,
                          ),
                          width: getHorizontalSize(
                            143.00,
                          ),
                          decoration: AppDecoration.fillBlack9007f.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    all: 40,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgPlaycirclefil,
                                    height: getSize(
                                      32.00,
                                    ),
                                    width: getSize(
                                      32.00,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  127.00,
                ),
                margin: getMargin(
                  top: 9,
                  right: 10,
                ),
                child: Text(
                  "msg_competition_vid".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium145.copyWith(
                    height: 1.17,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

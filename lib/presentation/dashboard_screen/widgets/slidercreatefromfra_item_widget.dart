import '../controller/dashboard_controller.dart';
import '../models/slidercreatefromfra_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_community_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SlidercreatefromfraItemWidget extends StatelessWidget {
  SlidercreatefromfraItemWidget(this.slidercreatefromfraItemModelObj);

  SlidercreatefromfraItemModel slidercreatefromfraItemModelObj;

  var controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: ColorConstant.indigo800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.customBorderBL55,
        ),
        child: Container(
          height: getVerticalSize(
            231.00,
          ),
          width: getHorizontalSize(
            360.00,
          ),
          decoration: AppDecoration.fillIndigo800.copyWith(
            borderRadius: BorderRadiusStyle.customBorderBL55,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: getPadding(
                    bottom: 10,
                  ),
                  child: Container(
                    height: getVerticalSize(
                      161.00,
                    ),
                    width: getHorizontalSize(
                      360.00,
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: getVerticalSize(
                              220.00,
                            ),
                            width: size.width,
                            decoration: BoxDecoration(
                              color: ColorConstant.indigo800,
                              borderRadius: BorderRadius.only(
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
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: getPadding(
                              right: 10,
                              bottom: 10,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CommonImageView(
                                  svgPath: ImageConstant.imgMenu,
                                  height: getSize(
                                    26.00,
                                  ),
                                  width: getSize(
                                    26.00,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 70,
                                    top: 1,
                                    bottom: 1,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CommonImageView(
                                        imagePath:
                                            ImageConstant.img2019cosmopolit,
                                        height: getVerticalSize(
                                          24.00,
                                        ),
                                        width: getHorizontalSize(
                                          104.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 11,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgCentraldevelop,
                                          height: getVerticalSize(
                                            24.00,
                                          ),
                                          width: getHorizontalSize(
                                            71.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: getPadding(
                    left: 10,
                    top: 10,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        8.00,
                      ),
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgImage21,
                      height: getVerticalSize(
                        180.00,
                      ),
                      width: getHorizontalSize(
                        340.00,
                      ),
                      fit: BoxFit.cover,
                    ),
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

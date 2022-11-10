import '../dashboard_screen/widgets/dashboard1_item_widget.dart';
import '../dashboard_screen/widgets/dashboard_item_widget.dart';
import '../dashboard_screen/widgets/slidercreatefromfra_item_widget.dart';
import 'controller/dashboard_controller.dart';
import 'models/dashboard1_item_model.dart';
import 'models/dashboard_item_model.dart';
import 'models/slidercreatefromfra_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_community_s_application2/core/app_export.dart';
import 'package:flutter_community_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:flutter_community_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardScreen extends GetWidget<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 61,
          leading: AppbarImage(
            height: getVerticalSize(
              11.00,
            ),
            width: getHorizontalSize(
              28.00,
            ),
            svgPath: ImageConstant.imgTicket,
            margin: getMargin(
              left: 33,
              top: 19,
              bottom: 17,
            ),
          ),
          centerTitle: true,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                15.00,
              ),
            ),
            child: CommonImageView(
              imagePath: ImageConstant.imgNotch,
              height: getVerticalSize(
                33.00,
              ),
              width: getHorizontalSize(
                153.00,
              ),
              fit: BoxFit.cover,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                11.00,
              ),
              width: getHorizontalSize(
                66.00,
              ),
              svgPath: ImageConstant.imgSignal,
              margin: getMargin(
                left: 27,
                top: 20,
                right: 27,
                bottom: 17,
              ),
            ),
          ],
          styleType: Style.bgFillIndigo800,
        ),
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 11,
                    right: 24,
                  ),
                  child: Obx(
                    () => CarouselSlider.builder(
                      options: CarouselOptions(
                        height: getVerticalSize(
                          231.00,
                        ),
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          controller.silderIndex.value = index;
                        },
                      ),
                      itemCount: controller.dashboardModelObj.value
                          .slidercreatefromfraItemList.length,
                      itemBuilder: (context, index, realIndex) {
                        SlidercreatefromfraItemModel model = controller
                            .dashboardModelObj
                            .value
                            .slidercreatefromfraItemList[index];
                        return SlidercreatefromfraItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
                Obx(
                  () => Container(
                    height: getVerticalSize(
                      10.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 14,
                      right: 24,
                    ),
                    child: AnimatedSmoothIndicator(
                      activeIndex: controller.silderIndex.value,
                      count: controller.dashboardModelObj.value
                          .slidercreatefromfraItemList.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 4,
                        activeDotColor: ColorConstant.indigo800,
                        dotColor: ColorConstant.gray50070,
                        dotHeight: getVerticalSize(
                          10.00,
                        ),
                        dotWidth: getHorizontalSize(
                          10.00,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 31,
                    right: 24,
                  ),
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          115.00,
                        ),
                        crossAxisCount: 3,
                        mainAxisSpacing: getHorizontalSize(
                          13.00,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          13.00,
                        ),
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: controller
                          .dashboardModelObj.value.dashboardItemList.length,
                      itemBuilder: (context, index) {
                        DashboardItemModel model = controller
                            .dashboardModelObj.value.dashboardItemList[index];
                        return DashboardItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 33,
                    right: 22,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "msg_latest_ccn_vide".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold18,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 3,
                          bottom: 1,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 1,
                              ),
                              child: Text(
                                "lbl_view_all".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterSemiBold14,
                              ),
                            ),
                            CommonImageView(
                              svgPath: ImageConstant.imgArrowright,
                              height: getSize(
                                18.00,
                              ),
                              width: getSize(
                                18.00,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: getVerticalSize(
                      188.00,
                    ),
                    width: getHorizontalSize(
                      457.00,
                    ),
                    child: Obx(
                      () => ListView.builder(
                        padding: getPadding(
                          left: 10,
                          top: 21,
                        ),
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: controller
                            .dashboardModelObj.value.dashboard1ItemList.length,
                        itemBuilder: (context, index) {
                          Dashboard1ItemModel model = controller
                              .dashboardModelObj
                              .value
                              .dashboard1ItemList[index];
                          return Dashboard1ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'controller/specific_help_controller.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';

class SpecificHelpScreen extends GetWidget<SpecificHelpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.53,
                0,
              ),
              end: Alignment(
                0.5,
                1,
              ),
              colors: [
                ColorConstant.whiteA700,
                ColorConstant.gray100,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 8,
              right: 8,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 17,
                      top: 38,
                    ),
                    child: Text(
                      "msg_emergency_button".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRubikMedium34,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 17,
                      top: 15,
                    ),
                    child: Text(
                      "msg_this_is_more_specific".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRubikRegular12.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.12,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 37,
                    top: 27,
                    right: 28,
                  ),
                  padding: getPadding(
                    left: 17,
                    top: 21,
                    right: 17,
                    bottom: 21,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img2a2987148ef74,
                        height: getSize(
                          30,
                        ),
                        width: getSize(
                          30,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 1,
                          bottom: 1,
                        ),
                        child: Text(
                          "msg_i_involved_in_accident".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold23,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 37,
                    top: 18,
                    right: 28,
                  ),
                  padding: getPadding(
                    all: 20,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage6,
                        height: getSize(
                          30,
                        ),
                        width: getSize(
                          30,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 17,
                          top: 4,
                        ),
                        child: Text(
                          "msg_i_feel_chest_pain".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold23,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 37,
                    top: 18,
                    right: 28,
                  ),
                  padding: getPadding(
                    left: 18,
                    top: 21,
                    right: 18,
                    bottom: 21,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage7,
                        height: getSize(
                          30,
                        ),
                        width: getSize(
                          30,
                        ),
                        margin: getMargin(
                          top: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 19,
                          top: 1,
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_someone_fainted".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold23,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 37,
                    top: 18,
                    right: 28,
                  ),
                  padding: getPadding(
                    left: 18,
                    top: 21,
                    right: 18,
                    bottom: 21,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage8,
                        height: getSize(
                          30,
                        ),
                        width: getSize(
                          30,
                        ),
                        margin: getMargin(
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 19,
                          top: 1,
                          bottom: 1,
                        ),
                        child: Text(
                          "msg_i_am_burried_alive".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold23,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 37,
                    top: 18,
                    right: 28,
                  ),
                  padding: getPadding(
                    left: 17,
                    top: 18,
                    right: 17,
                    bottom: 18,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage9,
                        height: getSize(
                          30,
                        ),
                        width: getSize(
                          30,
                        ),
                        margin: getMargin(
                          bottom: 7,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 6,
                          bottom: 2,
                        ),
                        child: Text(
                          "msg_i_am_almost_drowning".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold23,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    370,
                  ),
                  margin: getMargin(
                    left: 17,
                    top: 25,
                    right: 8,
                  ),
                  padding: getPadding(
                    left: 21,
                    top: 1,
                    right: 21,
                    bottom: 1,
                  ),
                  decoration: AppDecoration.fillGray200.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 7,
                        ),
                        child: Text(
                          "msg_your_current_address".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold15,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          273,
                        ),
                        margin: getMargin(
                          top: 4,
                          right: 54,
                        ),
                        child: Text(
                          "msg_jalan_lagoon_selatan".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular15,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: getMargin(
                      top: 72,
                      right: 20,
                    ),
                    padding: getPadding(
                      left: 62,
                      top: 34,
                      right: 62,
                      bottom: 34,
                    ),
                    decoration: AppDecoration.fillGray50.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder50,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgGrid,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            top: 3,
                            bottom: 3,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgMusic,
                          height: getVerticalSize(
                            31,
                          ),
                          width: getHorizontalSize(
                            30,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgSearchGray800,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            top: 3,
                            bottom: 3,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgSettings,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            top: 3,
                            right: 7,
                            bottom: 3,
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
    );
  }
}

import 'controller/victim_view_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/cpr_page/cpr_page.dart';
import 'package:survive_now/widgets/app_bar/appbar_button.dart';
import 'package:survive_now/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:survive_now/widgets/app_bar/appbar_title.dart';
import 'package:survive_now/widgets/app_bar/custom_app_bar.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';
import 'package:survive_now/widgets/custom_button.dart';

class VictimViewOneScreen extends GetWidget<VictimViewOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
                height: getVerticalSize(57),
                leadingWidth: 48,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 10, bottom: 13),
                    onTap: onTapArrowleft2),
                title: AppbarTitle(
                    text: "lbl_earthquake".tr, margin: getMargin(left: 10)),
                actions: [
                  AppbarButton(
                      margin: getMargin(left: 17, top: 6, right: 17, bottom: 9))
                ]),
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(top: 56, bottom: 100),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.53, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.whiteA700,
                      ColorConstant.gray100
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 16, right: 16),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  width: getHorizontalSize(357),
                                  margin: getMargin(top: 4, right: 1),
                                  padding: getPadding(
                                      left: 18, top: 11, right: 18, bottom: 11),
                                  decoration: AppDecoration.outlineBlack9003f
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("msg_announcement_by".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRubikRomanBold14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.14))),
                                        Container(
                                            width: getHorizontalSize(309),
                                            margin: getMargin(
                                                top: 8, right: 11, bottom: 23),
                                            child: Text(
                                                "msg_rescue_team_rescue".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRomanRegular12
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.12))))
                                      ]))),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 12, right: 1),
                                  padding: getPadding(
                                      left: 18, top: 10, right: 18, bottom: 10),
                                  decoration: AppDecoration.outlineRed500ea01
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("msg_what_you_should".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRubikRomanBold12
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.12))),
                                        Container(
                                            width: getHorizontalSize(317),
                                            margin: getMargin(top: 8),
                                            child: Text(
                                                "msg_duck_down_cover".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRomanRegular12
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.12)))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage11,
                                            height: getVerticalSize(96),
                                            width: getHorizontalSize(314),
                                            margin:
                                                getMargin(top: 9, bottom: 4))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 12),
                              child: Divider(color: ColorConstant.blueGray100)),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 10, right: 1),
                                  padding: getPadding(
                                      left: 18, top: 10, right: 18, bottom: 10),
                                  decoration: AppDecoration.outlineRedA700ea
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("lbl_emergency_tools".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRubikRomanBold14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.14))),
                                        Padding(
                                            padding: getPadding(top: 9),
                                            child: Text(
                                                "msg_use_this_when_needed".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRomanRegular12Black900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.12)))),
                                        Padding(
                                            padding:
                                                getPadding(top: 9, bottom: 3),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(36),
                                                      width: getHorizontalSize(
                                                          215),
                                                      text:
                                                          "msg_turn_on_low_battery"
                                                              .tr,
                                                      fontStyle: ButtonFontStyle
                                                          .RubikRomanBold12),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(36),
                                                      width: getHorizontalSize(
                                                          100),
                                                      text: "lbl_play_sos".tr,
                                                      variant: ButtonVariant
                                                          .FillRed500ea)
                                                ]))
                                      ]))),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  width: getHorizontalSize(357),
                                  margin: getMargin(top: 12, right: 1),
                                  padding: getPadding(
                                      left: 18, top: 9, right: 18, bottom: 9),
                                  decoration: AppDecoration.outlineBlack9003f
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("msg_takeaways_from_similar".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRubikRomanBold12
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.12))),
                                        Padding(
                                            padding: getPadding(top: 9),
                                            child: Divider(
                                                color:
                                                    ColorConstant.blueGray100)),
                                        Padding(
                                            padding: getPadding(top: 9),
                                            child: Text(
                                                "msg_2022_d_zce_earthquake".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRomanRegular12Black900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.12)))),
                                        Container(
                                            width: getHorizontalSize(310),
                                            margin:
                                                getMargin(top: 7, right: 10),
                                            child: Text(
                                                "msg_be_calm_do_not2".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRomanRegular12
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.12))))
                                      ]))),
                          Container(
                              width: double.maxFinite,
                              child: Container(
                                  width: getHorizontalSize(357),
                                  margin: getMargin(top: 12, right: 1),
                                  padding: getPadding(
                                      left: 10, top: 7, right: 10, bottom: 7),
                                  decoration: AppDecoration.outlineBlack9003f
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 3),
                                            child: Text(
                                                "msg_summary_from_reputable".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRomanBold12
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.12)))),
                                        Padding(
                                            padding:
                                                getPadding(top: 9, right: 13),
                                            child: Row(children: [
                                              Container(
                                                  width: getHorizontalSize(115),
                                                  padding: getPadding(
                                                      left: 11,
                                                      top: 5,
                                                      right: 11,
                                                      bottom: 5),
                                                  decoration: AppDecoration
                                                      .outlineGray600
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage12,
                                                        height: getSize(21),
                                                        width: getSize(21)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10,
                                                            top: 2,
                                                            bottom: 3),
                                                        child: Text(
                                                            "lbl_bbc_news".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRubikRomanBold12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.12))))
                                                  ])),
                                              Container(
                                                  width: getHorizontalSize(107),
                                                  margin: getMargin(
                                                      left: 10, bottom: 1),
                                                  padding: getPadding(
                                                      left: 9, right: 9),
                                                  decoration: AppDecoration
                                                      .outlineGray600
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage13,
                                                        height: getSize(30),
                                                        width: getSize(30)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10,
                                                            top: 7,
                                                            bottom: 8),
                                                        child: Text(
                                                            "lbl_reuters".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRubikRomanBold12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.12))))
                                                  ])),
                                              Container(
                                                  width: getHorizontalSize(82),
                                                  margin: getMargin(
                                                      left: 10, bottom: 1),
                                                  padding: getPadding(
                                                      left: 13,
                                                      top: 5,
                                                      right: 13,
                                                      bottom: 5),
                                                  decoration: AppDecoration
                                                      .outlineGray600
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage14,
                                                        height: getSize(20),
                                                        width: getSize(20)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10,
                                                            top: 2,
                                                            bottom: 2),
                                                        child: Text(
                                                            "lbl_cnn".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRubikRomanBold12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.12))))
                                                  ]))
                                            ]))
                                      ])))
                        ]))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Grid:
        return AppRoutes.cprPage;
      case BottomBarEnum.Music:
        return "/";
      case BottomBarEnum.Searchgray800:
        return "/";
      case BottomBarEnum.Settings:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.cprPage:
        return CprPage();
      default:
        return DefaultWidget();
    }
  }

  onTapArrowleft2() {
    Get.back();
  }
}

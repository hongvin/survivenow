import '../victim_view_screen/widgets/sliderwhatyoushould_item_widget.dart';
import 'controller/victim_view_controller.dart';
import 'models/sliderwhatyoushould_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/cpr_page/cpr_page.dart';
import 'package:survive_now/widgets/app_bar/appbar_button.dart';
import 'package:survive_now/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:survive_now/widgets/app_bar/appbar_title.dart';
import 'package:survive_now/widgets/app_bar/custom_app_bar.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';
import 'package:survive_now/widgets/custom_button.dart';

class VictimViewScreen extends GetWidget<VictimViewController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 57,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 25, top: 11, bottom: 12),
                    onTap: onTapArrowleft),
                title: AppbarTitle(
                    text: "lbl_flood".tr, margin: getMargin(left: 25)),
                actions: [
                  AppbarButton(
                      margin: getMargin(left: 16, top: 7, right: 16, bottom: 8))
                ]),
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(top: 56, bottom: 95),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.53, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.whiteA700,
                      ColorConstant.gray100
                    ])),
                child: Container(
                    width: getHorizontalSize(411),
                    padding: getPadding(left: 16, right: 16),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: getHorizontalSize(370),
                              margin: getMargin(left: 9, top: 3),
                              padding: getPadding(
                                  left: 18, top: 7, right: 18, bottom: 7),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 4),
                                        child: Text("msg_announcement_by".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRubikRomanBold16
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.16)))),
                                    Container(
                                        width: getHorizontalSize(319),
                                        margin: getMargin(top: 8, right: 14),
                                        child: Text("msg_rescue_team_rescue".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.14))))
                                  ])),
                          Container(
                              height: getVerticalSize(436),
                              width: getHorizontalSize(370),
                              margin: getMargin(top: 12),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Obx(() => CarouselSlider.builder(
                                        options: CarouselOptions(
                                            height: getVerticalSize(436),
                                            initialPage: 0,
                                            autoPlay: true,
                                            viewportFraction: 1.0,
                                            enableInfiniteScroll: false,
                                            scrollDirection: Axis.horizontal,
                                            onPageChanged: (index, reason) {
                                              controller.silderIndex.value =
                                                  index;
                                            }),
                                        itemCount: controller
                                            .victimViewModelObj
                                            .value
                                            .sliderwhatyoushouldItemList
                                            .length,
                                        itemBuilder:
                                            (context, index, realIndex) {
                                          SliderwhatyoushouldItemModel model =
                                              controller
                                                      .victimViewModelObj
                                                      .value
                                                      .sliderwhatyoushouldItemList[
                                                  index];
                                          return SliderwhatyoushouldItemWidget(
                                              model);
                                        })),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Obx(() => Container(
                                            height: getVerticalSize(40),
                                            margin: getMargin(bottom: 13),
                                            child: AnimatedSmoothIndicator(
                                                activeIndex: controller
                                                    .silderIndex.value,
                                                count: controller
                                                    .victimViewModelObj
                                                    .value
                                                    .sliderwhatyoushouldItemList
                                                    .length,
                                                axisDirection: Axis.horizontal,
                                                effect: ScrollingDotsEffect(
                                                    spacing: 8,
                                                    activeDotColor:
                                                        ColorConstant.black900,
                                                    dotColor:
                                                        ColorConstant.gray400,
                                                    dotHeight:
                                                        getVerticalSize(8),
                                                    dotWidth: getHorizontalSize(
                                                        8))))))
                                  ])),
                          Container(
                              margin: getMargin(left: 9, top: 12),
                              padding: getPadding(
                                  left: 18, top: 10, right: 18, bottom: 10),
                              decoration: AppDecoration.outlineRedA700ea
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_emergency_tools".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold16.copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.16))),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Text(
                                            "msg_use_this_when_needed".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular14Black900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.14)))),
                                    Padding(
                                        padding: getPadding(top: 9),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomButton(
                                                  height: getVerticalSize(37),
                                                  width: getHorizontalSize(222),
                                                  text:
                                                      "msg_turn_on_low_battery"
                                                          .tr,
                                                  fontStyle: ButtonFontStyle
                                                      .InterBold12),
                                              CustomButton(
                                                  height: getVerticalSize(37),
                                                  width: getHorizontalSize(97),
                                                  text: "lbl_play_sos".tr,
                                                  variant: ButtonVariant
                                                      .FillRed500ea,
                                                  fontStyle: ButtonFontStyle
                                                      .InterBold12WhiteA700)
                                            ]))
                                  ])),
                          Container(
                              margin: getMargin(left: 9, top: 12),
                              padding: getPadding(
                                  left: 18, top: 11, right: 18, bottom: 11),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(334),
                                        child: Text(
                                            "msg_takeaways_from_similar2".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterBold16Black900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.16)))),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Text(
                                            "msg_2021_2022_malaysian".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.14)))),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Text("msg_be_calm_do_not".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.14))))
                                  ])),
                          Container(
                              margin: getMargin(left: 9, top: 12),
                              padding: getPadding(
                                  left: 10, top: 11, right: 10, bottom: 11),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("msg_summary_from_reputable".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold16Black900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.16))),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 7,
                                                      right: 18,
                                                      bottom: 7),
                                                  decoration: AppDecoration
                                                      .outlineGray600
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage12,
                                                            height: getSize(21),
                                                            width: getSize(21)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 10,
                                                                top: 3,
                                                                bottom: 3),
                                                            child: Text(
                                                                "lbl_bbc".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtInterBold12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.12))))
                                                      ])),
                                              Container(
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 2,
                                                      right: 18,
                                                      bottom: 2),
                                                  decoration: AppDecoration
                                                      .outlineGray600
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage13,
                                                            height: getSize(30),
                                                            width: getSize(30)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 10,
                                                                top: 7,
                                                                bottom: 7),
                                                            child: Text(
                                                                "lbl_reuters"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtInterBold12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.12))))
                                                      ])),
                                              Container(
                                                  padding: getPadding(
                                                      left: 18,
                                                      top: 7,
                                                      right: 18,
                                                      bottom: 7),
                                                  decoration: AppDecoration
                                                      .outlineGray600
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
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
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtInterBold12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.12))))
                                                      ]))
                                            ]))
                                  ]))
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

  onTapArrowleft() {
    Get.back();
  }
}

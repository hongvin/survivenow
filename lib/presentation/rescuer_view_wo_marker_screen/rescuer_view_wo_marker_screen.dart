import 'controller/rescuer_view_wo_marker_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/cpr_page/cpr_page.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';
import 'package:survive_now/widgets/custom_button.dart';
import 'package:survive_now/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class RescuerViewWoMarkerScreen
    extends GetWidget<RescuerViewWoMarkerController> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(bottom: 95),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.53, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.whiteA700,
                      ColorConstant.gray100
                    ])),
                child: Container(
                    height: getVerticalSize(731),
                    width: getHorizontalSize(411),
                    padding: getPadding(left: 2, right: 2),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: getPadding(left: 21, right: 16),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            padding: getPadding(
                                                left: 119,
                                                top: 8,
                                                right: 119,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .outlineBlack9003f1
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_nearby"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.16))),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_victim"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .black900,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                16),
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.16)))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text("lbl_15".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterExtraBold40
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4))))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            width: getHorizontalSize(370),
                                            margin: getMargin(top: 17),
                                            padding: getPadding(
                                                left: 18,
                                                top: 7,
                                                right: 18,
                                                bottom: 7),
                                            decoration: AppDecoration
                                                .outlineBlack9003f
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text(
                                                          "msg_announcement_for"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.16)))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          272),
                                                      margin: getMargin(
                                                          top: 9, right: 61),
                                                      child: Text(
                                                          "msg_due_to_the_high"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular14
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.14))))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(top: 17),
                                            padding: getPadding(
                                                left: 18,
                                                top: 10,
                                                right: 18,
                                                bottom: 10),
                                            decoration: AppDecoration
                                                .outlineRedA700ea
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_helpful".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold16
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.16))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 10,
                                                                        right:
                                                                            18,
                                                                        bottom:
                                                                            10),
                                                                decoration: AppDecoration
                                                                    .fillTeal200
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder15),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "msg_turn_on_low_battery"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtInterBold12Black900
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.12)))
                                                                    ])),
                                                            Container(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            18,
                                                                        top: 10,
                                                                        right:
                                                                            18,
                                                                        bottom:
                                                                            10),
                                                                decoration: AppDecoration
                                                                    .fillRed500ea
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder15),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                          "lbl_play_sos"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtInterBold12WhiteA700
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.12)))
                                                                    ]))
                                                          ]))
                                                ]))),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(top: 17),
                                            padding: getPadding(
                                                left: 18,
                                                top: 10,
                                                right: 18,
                                                bottom: 10),
                                            decoration: AppDecoration
                                                .outlineBlack9003f
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          210),
                                                      child: Text(
                                                          "msg_contribute_for_better"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold16Black900
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.16)))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          334),
                                                      margin: getMargin(top: 9),
                                                      child: Text(
                                                          "msg_often_time_news2"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular14
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.14)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            CustomButton(
                                                                height:
                                                                    getVerticalSize(
                                                                        32),
                                                                width:
                                                                    getHorizontalSize(
                                                                        125),
                                                                text:
                                                                    "lbl_upload_photo"
                                                                        .tr,
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineBluegray400,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .InterBold12Black900),
                                                            CustomButton(
                                                                height:
                                                                    getVerticalSize(
                                                                        32),
                                                                width:
                                                                    getHorizontalSize(
                                                                        158),
                                                                text:
                                                                    "msg_submit_your_story"
                                                                        .tr,
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineBluegray400,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .InterBold12Black900)
                                                          ]))
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              height: getVerticalSize(350),
                              width: getHorizontalSize(404),
                              margin: getMargin(top: 35),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Container(
                                        height: getVerticalSize(350),
                                        width: getHorizontalSize(404),
                                        child: GoogleMap(
                                            mapType: MapType.normal,
                                            initialCameraPosition:
                                                CameraPosition(
                                                    target: LatLng(
                                                        37.43296265331129,
                                                        -122.08832357078792),
                                                    zoom: 14.4746),
                                            onMapCreated: (GoogleMapController
                                                controller) {
                                              googleMapController
                                                  .complete(controller);
                                            },
                                            zoomControlsEnabled: false,
                                            zoomGesturesEnabled: false,
                                            myLocationButtonEnabled: false,
                                            myLocationEnabled: false)),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 10, right: 16),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomIconButton(
                                                      height: 35,
                                                      width: 35,
                                                      padding: IconButtonPadding
                                                          .PaddingAll8,
                                                      onTap: () {
                                                        onTapBtnArrowleft();
                                                      },
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleft)),
                                                  CustomIconButton(
                                                      height: 46,
                                                      width: 46,
                                                      margin:
                                                          getMargin(top: 234),
                                                      variant: IconButtonVariant
                                                          .OutlineBlack90014_1,
                                                      shape: IconButtonShape
                                                          .RoundedBorder7,
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgHome))
                                                ])))
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

  onTapBtnArrowleft() {
    Get.back();
  }
}

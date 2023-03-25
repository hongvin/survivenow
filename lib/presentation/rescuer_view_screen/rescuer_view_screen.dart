import 'controller/rescuer_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/cpr_page/cpr_page.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';
import 'package:survive_now/widgets/custom_button.dart';
import 'package:survive_now/widgets/custom_icon_button.dart';

class RescuerViewScreen extends GetWidget<RescuerViewController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(bottom: 100),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.53, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.whiteA700,
                      ColorConstant.gray100
                    ])),
                child: Container(
                    height: getVerticalSize(844),
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              margin: getMargin(top: 44),
                              padding: getPadding(
                                  left: 7, top: 8, right: 7, bottom: 8),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ImageConstant.imgMap350x390),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomIconButton(
                                        height: 32,
                                        width: 32,
                                        margin: getMargin(left: 3),
                                        padding: IconButtonPadding.PaddingAll8,
                                        onTap: () {
                                          onTapBtnArrowleft();
                                        },
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowleft)),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 88, top: 43, right: 15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                      height: getSize(210),
                                                      width: getSize(210),
                                                      margin:
                                                          getMargin(bottom: 3),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Container(
                                                                    height:
                                                                        getSize(
                                                                            44),
                                                                    width:
                                                                        getSize(
                                                                            44),
                                                                    margin: getMargin(
                                                                        left:
                                                                            78),
                                                                    decoration:
                                                                        BoxDecoration())),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Card(
                                                                    clipBehavior:
                                                                        Clip
                                                                            .antiAlias,
                                                                    elevation:
                                                                        0,
                                                                    margin: EdgeInsets
                                                                        .all(0),
                                                                    color: ColorConstant
                                                                        .blueGray1007f,
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadiusStyle.circleBorder105),
                                                                    child: Container(
                                                                        height: getSize(210),
                                                                        width: getSize(210),
                                                                        padding: getPadding(left: 12, right: 12),
                                                                        decoration: AppDecoration.fillBluegray1007f.copyWith(borderRadius: BorderRadiusStyle.circleBorder105),
                                                                        child: Stack(alignment: Alignment.bottomRight, children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 49),
                                                                                  child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                    Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                      CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), alignment: Alignment.centerRight),
                                                                                      Container(
                                                                                          height: getVerticalSize(32),
                                                                                          width: getHorizontalSize(24),
                                                                                          margin: getMargin(top: 12),
                                                                                          child: Stack(alignment: Alignment.center, children: [
                                                                                            CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), alignment: Alignment.center),
                                                                                            CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), alignment: Alignment.center)
                                                                                          ]))
                                                                                    ]),
                                                                                    Container(
                                                                                        margin: getMargin(top: 23, bottom: 29),
                                                                                        padding: getPadding(all: 7),
                                                                                        decoration: AppDecoration.fillBlue30075.copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
                                                                                        child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                          Container(
                                                                                              height: getSize(10),
                                                                                              width: getSize(10),
                                                                                              decoration: BoxDecoration(color: ColorConstant.blue300, borderRadius: BorderRadius.circular(getHorizontalSize(5)), border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(2), strokeAlign: StrokeAlign.outside), boxShadow: [
                                                                                                BoxShadow(color: ColorConstant.black90026, spreadRadius: getHorizontalSize(2), blurRadius: getHorizontalSize(2), offset: Offset(0, 1))
                                                                                              ]))
                                                                                        ]))
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.bottomRight,
                                                                              child: Container(
                                                                                  height: getVerticalSize(78),
                                                                                  width: getHorizontalSize(65),
                                                                                  margin: getMargin(right: 6, bottom: 43),
                                                                                  child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), alignment: Alignment.bottomLeft, margin: getMargin(bottom: 7)),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), alignment: Alignment.bottomLeft, margin: getMargin(left: 4, bottom: 11)),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), alignment: Alignment.bottomRight, margin: getMargin(right: 14)),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), alignment: Alignment.topRight, margin: getMargin(top: 8)),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), alignment: Alignment.topRight, margin: getMargin(right: 8))
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.bottomLeft,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 34, bottom: 6),
                                                                                  child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), margin: getMargin(bottom: 21)),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), margin: getMargin(left: 25, top: 21))
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.topLeft,
                                                                              child: Padding(
                                                                                  padding: getPadding(top: 57),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), alignment: Alignment.centerRight),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), margin: getMargin(top: 2))
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.topRight,
                                                                              child: Padding(
                                                                                  padding: getPadding(right: 28),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), margin: getMargin(top: 23, bottom: 9)),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), margin: getMargin(left: 1, bottom: 32)),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), margin: getMargin(left: 5, top: 10, bottom: 22)),
                                                                                    CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), margin: getMargin(left: 15, top: 32))
                                                                                  ])))
                                                                        ]))))
                                                          ])),
                                                  CustomIconButton(
                                                      height: 46,
                                                      width: 46,
                                                      margin: getMargin(
                                                          left: 17, top: 167),
                                                      variant: IconButtonVariant
                                                          .OutlineBlack90014_1,
                                                      shape: IconButtonShape
                                                          .RoundedBorder7,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgHome))
                                                ]))),
                                    Padding(
                                        padding: getPadding(
                                            left: 3, top: 8, bottom: 17),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgSignal,
                                                  height: getVerticalSize(19),
                                                  width: getHorizontalSize(61)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 24, top: 4),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    15),
                                                            width:
                                                                getHorizontalSize(
                                                                    121),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Container(
                                                                          height: getVerticalSize(
                                                                              15),
                                                                          width: getHorizontalSize(
                                                                              121),
                                                                          decoration:
                                                                              BoxDecoration(color: ColorConstant.gray100Cc))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      child: Text(
                                                                          "msg_map_data_2023_google"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRobotoRegular10))
                                                                ])),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    70),
                                                            margin:
                                                                getMargin(
                                                                    left: 1),
                                                            padding:
                                                                getPadding(
                                                                    left: 5,
                                                                    top: 1,
                                                                    right: 5,
                                                                    bottom: 1),
                                                            decoration:
                                                                AppDecoration
                                                                    .txtFillGray100cc,
                                                            child: Text(
                                                                "lbl_terms_of_use"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular10)),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    15),
                                                            width:
                                                                getHorizontalSize(
                                                                    94),
                                                            margin: getMargin(
                                                                left: 1),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Container(
                                                                          height: getVerticalSize(
                                                                              15),
                                                                          width: getHorizontalSize(
                                                                              94),
                                                                          decoration:
                                                                              BoxDecoration(color: ColorConstant.gray100Cc))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      child: Text(
                                                                          "msg_report_a_map_error"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRobotoRegular10))
                                                                ]))
                                                      ]))
                                            ]))
                                  ]))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding:
                                  getPadding(left: 21, right: 22, bottom: 5),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: getMargin(left: 6, right: 6),
                                        padding: getPadding(
                                            left: 106,
                                            top: 7,
                                            right: 106,
                                            bottom: 7),
                                        decoration: AppDecoration
                                            .outlineBlack9003f1
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "lbl_nearby".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(15),
                                                            fontFamily: 'Rubik',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.15))),
                                                    TextSpan(
                                                        text: "lbl_victim".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize:
                                                                getFontSize(15),
                                                            fontFamily: 'Rubik',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.15)))
                                                  ]),
                                                  textAlign: TextAlign.left),
                                              Padding(
                                                  padding: getPadding(top: 8),
                                                  child: Text("lbl_15".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikRomanBold40
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.4))))
                                            ])),
                                    Container(
                                        width: getHorizontalSize(335),
                                        margin: getMargin(
                                            left: 6, top: 17, right: 6),
                                        padding: getPadding(
                                            left: 18,
                                            top: 8,
                                            right: 18,
                                            bottom: 8),
                                        decoration: AppDecoration
                                            .outlineBlack9003f
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
                                                  padding: getPadding(top: 1),
                                                  child: Text(
                                                      "msg_announcement_for".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikRomanBold14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.14)))),
                                              Container(
                                                  width: getHorizontalSize(285),
                                                  margin: getMargin(
                                                      top: 9, right: 13),
                                                  child: Text(
                                                      "msg_due_to_the_high".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikRomanRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12))))
                                            ])),
                                    Container(
                                        margin: getMargin(
                                            left: 6, top: 17, right: 6),
                                        padding: getPadding(
                                            left: 18,
                                            top: 10,
                                            right: 18,
                                            bottom: 10),
                                        decoration: AppDecoration
                                            .outlineRedA700ea
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
                                              Text("lbl_helpful".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRomanBold14
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.14))),
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    36),
                                                            width:
                                                                getHorizontalSize(
                                                                    215),
                                                            text:
                                                                "msg_turn_on_low_battery"
                                                                    .tr,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .RubikRomanBold12),
                                                        CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    36),
                                                            width:
                                                                getHorizontalSize(
                                                                    78),
                                                            text: "lbl_play_sos"
                                                                .tr,
                                                            variant: ButtonVariant
                                                                .FillRed500ea)
                                                      ]))
                                            ])),
                                    Container(
                                        width: double.maxFinite,
                                        child: Container(
                                            margin: getMargin(top: 17),
                                            padding: getPadding(
                                                left: 15,
                                                top: 8,
                                                right: 15,
                                                bottom: 8),
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
                                                      padding: getPadding(
                                                          left: 3, top: 2),
                                                      child: Text(
                                                          "msg_contribute_for_better"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikRomanBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.12)))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          314),
                                                      margin: getMargin(
                                                          left: 3, top: 8),
                                                      child: Text(
                                                          "msg_often_time_news"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikRomanRegular12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.12)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 3,
                                                          top: 9,
                                                          right: 21),
                                                      child: Row(children: [
                                                        Container(
                                                            padding: getPadding(
                                                                left: 15,
                                                                top: 8,
                                                                right: 15,
                                                                bottom: 8),
                                                            decoration: AppDecoration
                                                                .outlineBluegray400
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
                                                                      "lbl_upload_photo"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikRomanBold12
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.12)))
                                                                ])),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 10),
                                                            padding: getPadding(
                                                                left: 15,
                                                                top: 8,
                                                                right: 15,
                                                                bottom: 8),
                                                            decoration: AppDecoration
                                                                .outlineBluegray400
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
                                                                      "msg_submit_your_story"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikRomanBold12
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.12)))
                                                                ]))
                                                      ]))
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

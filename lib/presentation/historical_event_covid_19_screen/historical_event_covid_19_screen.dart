import '../historical_event_covid_19_screen/widgets/listtakeawaysfromsimilar_item_widget.dart';
import 'controller/historical_event_covid_19_controller.dart';
import 'models/listtakeawaysfromsimilar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/cpr_page/cpr_page.dart';
import 'package:survive_now/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:survive_now/widgets/app_bar/custom_app_bar.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';
import 'package:survive_now/widgets/custom_button.dart';

class HistoricalEventCovid19Screen
    extends GetWidget<HistoricalEventCovid19Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 5, right: 5),
                decoration: AppDecoration.gradientWhiteA700Gray100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Padding(
                              padding: getPadding(top: 11),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomAppBar(
                                        height: getVerticalSize(32),
                                        leadingWidth: 54,
                                        leading: AppbarIconbutton1(
                                            svgPath: ImageConstant.imgArrowleft,
                                            margin: getMargin(left: 22),
                                            onTap: onTapArrowleft1),
                                        title: Padding(
                                            padding: getPadding(left: 4),
                                            child: Row(children: [
                                              Container(
                                                  width: getHorizontalSize(55),
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 2,
                                                      right: 7,
                                                      bottom: 2),
                                                  decoration: AppDecoration
                                                      .txtFillLightgreenA200
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder9),
                                                  child: Text("lbl_endemic".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikMedium10)),
                                              Container(
                                                  width: getHorizontalSize(55),
                                                  margin: getMargin(left: 4),
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 1,
                                                      right: 7,
                                                      bottom: 1),
                                                  decoration: AppDecoration
                                                      .txtFillRed100
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder9),
                                                  child: Text("lbl_global".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikMedium10))
                                            ]))),
                                    Padding(
                                        padding: getPadding(left: 10, top: 11),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage10,
                                              height: getSize(38),
                                              width: getSize(38),
                                              margin:
                                                  getMargin(top: 1, bottom: 1)),
                                          Padding(
                                              padding: getPadding(left: 9),
                                              child: Text("lbl_covid_19".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikMedium34))
                                        ])),
                                    Padding(
                                        padding: getPadding(left: 7, top: 11),
                                        child: Text("msg_a_walktrough_of".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRubikRegular12
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.12)))),
                                    Container(
                                        margin: getMargin(
                                            left: 7, top: 10, right: 4),
                                        padding: getPadding(
                                            left: 10,
                                            top: 7,
                                            right: 10,
                                            bottom: 7),
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
                                                  padding: getPadding(top: 3),
                                                  child: Text(
                                                      "msg_summary_from_reputable"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikRomanBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12)))),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 9, right: 2),
                                                  child: Row(children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                115),
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
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgImage12,
                                                              height:
                                                                  getSize(21),
                                                              width:
                                                                  getSize(21)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      top: 2,
                                                                      bottom:
                                                                          3),
                                                              child: Text(
                                                                  "lbl_bbc_news"
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
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.12))))
                                                        ])),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                107),
                                                        margin: getMargin(
                                                            left: 10,
                                                            bottom: 1),
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
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgImage13,
                                                              height:
                                                                  getSize(30),
                                                              width:
                                                                  getSize(30)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      top: 7,
                                                                      bottom:
                                                                          8),
                                                              child: Text(
                                                                  "lbl_reuters"
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
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.12))))
                                                        ])),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                82),
                                                        margin: getMargin(
                                                            left: 10,
                                                            bottom: 1),
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
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgImage14,
                                                              height:
                                                                  getSize(20),
                                                              width:
                                                                  getSize(20)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      top: 2,
                                                                      bottom:
                                                                          2),
                                                              child: Text(
                                                                  "lbl_cnn".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRubikRomanBold12
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.12))))
                                                        ]))
                                                  ]))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Divider(
                                            color: ColorConstant.blueGray100)),
                                    Container(
                                        margin: getMargin(
                                            left: 7, top: 8, right: 3),
                                        padding: getPadding(
                                            left: 12,
                                            top: 10,
                                            right: 12,
                                            bottom: 10),
                                        decoration: AppDecoration
                                            .outlineRed500ea01
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
                                              Padding(
                                                  padding: getPadding(left: 6),
                                                  child: Text(
                                                      "msg_what_you_should".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikRomanBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12)))),
                                              Container(
                                                  width: getHorizontalSize(317),
                                                  margin: getMargin(
                                                      left: 6, top: 9),
                                                  child: Text(
                                                      "msg_stay_at_home_observe"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikRomanRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12)))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage15,
                                                  height: getVerticalSize(107),
                                                  width: getHorizontalSize(317),
                                                  margin: getMargin(
                                                      left: 6, top: 7))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 7, top: 12, right: 3),
                                        child: Obx(() => ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(12));
                                            },
                                            itemCount: controller
                                                .historicalEventCovid19ModelObj
                                                .value
                                                .listtakeawaysfromsimilarItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListtakeawaysfromsimilarItemModel
                                                  model = controller
                                                      .historicalEventCovid19ModelObj
                                                      .value
                                                      .listtakeawaysfromsimilarItemList[index];
                                              return ListtakeawaysfromsimilarItemWidget(
                                                  model);
                                            }))),
                                    Container(
                                        margin: getMargin(
                                            left: 7, top: 12, right: 3),
                                        padding: getPadding(
                                            left: 4,
                                            top: 8,
                                            right: 4,
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
                                                  padding: getPadding(
                                                      left: 14, top: 2),
                                                  child: Text(
                                                      "msg_contribute_for_better"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikRomanBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12)))),
                                              Container(
                                                  width: getHorizontalSize(325),
                                                  margin: getMargin(
                                                      left: 14, top: 9),
                                                  child: Text(
                                                      "msg_any_interesting".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikRomanRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 14,
                                                      top: 7,
                                                      right: 32),
                                                  child: Row(children: [
                                                    CustomButton(
                                                        height:
                                                            getVerticalSize(32),
                                                        width:
                                                            getHorizontalSize(
                                                                125),
                                                        text: "lbl_upload_photo"
                                                            .tr,
                                                        variant: ButtonVariant
                                                            .OutlineBluegray400,
                                                        fontStyle: ButtonFontStyle
                                                            .RubikRomanBold12),
                                                    CustomButton(
                                                        height:
                                                            getVerticalSize(32),
                                                        width:
                                                            getHorizontalSize(
                                                                158),
                                                        text:
                                                            "msg_submit_your_story"
                                                                .tr,
                                                        margin:
                                                            getMargin(left: 10),
                                                        variant: ButtonVariant
                                                            .OutlineBluegray400,
                                                        fontStyle: ButtonFontStyle
                                                            .RubikRomanBold12)
                                                  ]))
                                            ]))
                                  ]))),
                      Container(
                          height: getVerticalSize(500),
                          width: getHorizontalSize(8),
                          margin: getMargin(left: 5, top: 56, bottom: 244),
                          decoration: BoxDecoration(
                              color: ColorConstant.blueGray100,
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(4))))
                    ])),
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

  onTapArrowleft1() {
    Get.back();
  }
}

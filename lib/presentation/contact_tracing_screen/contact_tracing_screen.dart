import 'controller/contact_tracing_controller.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/cpr_page/cpr_page.dart';
import 'package:survive_now/widgets/app_bar/custom_app_bar.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';
import 'package:survive_now/widgets/custom_icon_button.dart';

class ContactTracingScreen extends GetWidget<ContactTracingController> {
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
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgMap350x390),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomAppBar(
                                            height: getVerticalSize(50),
                                            leadingWidth: 47,
                                            leading: CustomIconButton(
                                                height: 32,
                                                width: 32,
                                                margin: getMargin(
                                                    left: 15,
                                                    top: 9,
                                                    bottom: 9),
                                                variant: IconButtonVariant
                                                    .FillWhiteA700,
                                                padding: IconButtonPadding
                                                    .PaddingAll8,
                                                onTap: () {
                                                  onTapBtnArrowleft();
                                                },
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleft)),
                                            title: Padding(
                                                padding: getPadding(left: 8),
                                                child: Text(
                                                    "msg_searching_for_doctors"
                                                        .tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRubikRomanBold20
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.2)))),
                                            styleType: Style.bgFillWhiteA700),
                                        Spacer(),
                                        Padding(
                                            padding:
                                                getPadding(left: 7, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSignal,
                                                      height:
                                                          getVerticalSize(19),
                                                      width:
                                                          getHorizontalSize(61),
                                                      margin: getMargin(
                                                          top: 31,
                                                          bottom: 159)),
                                                  Container(
                                                      height:
                                                          getVerticalSize(210),
                                                      width: getHorizontalSize(
                                                          287),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child:
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            287),
                                                                        margin: getMargin(
                                                                            top:
                                                                                36,
                                                                            bottom:
                                                                                158),
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Container(
                                                                                  height: getVerticalSize(15),
                                                                                  width: getHorizontalSize(121),
                                                                                  child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                    Align(alignment: Alignment.center, child: Container(height: getVerticalSize(15), width: getHorizontalSize(121), decoration: BoxDecoration(color: ColorConstant.gray100Cc))),
                                                                                    Align(alignment: Alignment.bottomCenter, child: Text("msg_map_data_2023_google".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10))
                                                                                  ])),
                                                                              Container(
                                                                                  padding: getPadding(left: 5, right: 5),
                                                                                  decoration: AppDecoration.fillGray100cc,
                                                                                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                    Padding(padding: getPadding(top: 2), child: Text("lbl_terms_of_use".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10))
                                                                                  ])),
                                                                              Container(
                                                                                  height: getVerticalSize(15),
                                                                                  width: getHorizontalSize(94),
                                                                                  child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                    Align(alignment: Alignment.center, child: Container(height: getVerticalSize(15), width: getHorizontalSize(94), decoration: BoxDecoration(color: ColorConstant.gray100Cc))),
                                                                                    Align(alignment: Alignment.bottomCenter, child: Text("msg_report_a_map_error".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular10))
                                                                                  ]))
                                                                            ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            left:
                                                                                2),
                                                                        padding: getPadding(
                                                                            left:
                                                                                16,
                                                                            top:
                                                                                2,
                                                                            right:
                                                                                16,
                                                                            bottom:
                                                                                2),
                                                                        decoration: AppDecoration.fillBluegray1007f.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .circleBorder105),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: Padding(
                                                                                      padding: getPadding(top: 13),
                                                                                      child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), margin: getMargin(bottom: 15)),
                                                                                        CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), margin: getMargin(left: 36, top: 15))
                                                                                      ]))),
                                                                              Align(
                                                                                  alignment: Alignment.centerRight,
                                                                                  child: Padding(
                                                                                      padding: getPadding(top: 27, right: 38),
                                                                                      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                                        Container(
                                                                                            margin: getMargin(top: 4, bottom: 4),
                                                                                            padding: getPadding(all: 7),
                                                                                            decoration: AppDecoration.fillBlue30075.copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
                                                                                            child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                              Container(
                                                                                                  height: getSize(10),
                                                                                                  width: getSize(10),
                                                                                                  decoration: BoxDecoration(color: ColorConstant.blue300, borderRadius: BorderRadius.circular(getHorizontalSize(5)), border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(2), strokeAlign: StrokeAlign.outside), boxShadow: [
                                                                                                    BoxShadow(color: ColorConstant.black90026, spreadRadius: getHorizontalSize(2), blurRadius: getHorizontalSize(2), offset: Offset(0, 1))
                                                                                                  ]))
                                                                                            ])),
                                                                                        CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), margin: getMargin(left: 15))
                                                                                      ]))),
                                                                              CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), margin: getMargin(top: 7)),
                                                                              CustomImageView(imagePath: ImageConstant.imgMarkerspinlet, height: getVerticalSize(32), width: getHorizontalSize(24), margin: getMargin(left: 68, top: 16))
                                                                            ])))
                                                          ]))
                                                ])),
                                        CustomIconButton(
                                            height: 60,
                                            width: 60,
                                            margin: getMargin(
                                                top: 44, right: 15, bottom: 55),
                                            variant: IconButtonVariant
                                                .OutlineBlack90014_1,
                                            padding:
                                                IconButtonPadding.PaddingAll15,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgLocation))
                                      ]))),
                          Padding(
                              padding: getPadding(left: 32, top: 25, right: 23),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        padding: getPadding(
                                            left: 15,
                                            top: 7,
                                            right: 15,
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
                                                        text: "lbl_doctor".tr,
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
                                                  child: Text("lbl_5".tr,
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
                                        margin: getMargin(left: 25),
                                        padding: getPadding(
                                            left: 19,
                                            top: 7,
                                            right: 19,
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
                                              Text("lbl_rescue".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRomanBold15
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.15))),
                                              Padding(
                                                  padding: getPadding(top: 9),
                                                  child: Text("lbl_700m".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikRomanBold40
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.4))))
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

  onTapBtnArrowleft() {
    Get.back();
  }
}

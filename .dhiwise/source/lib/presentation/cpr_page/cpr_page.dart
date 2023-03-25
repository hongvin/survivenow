import '../cpr_page/widgets/listcallforhelp000010_item_widget.dart';
import '../cpr_page/widgets/listsummary_item_widget.dart';
import 'controller/cpr_controller.dart';
import 'models/cpr_model.dart';
import 'models/listcallforhelp000010_item_model.dart';
import 'models/listsummary_item_model.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/widgets/app_bar/appbar_title.dart';
import 'package:survive_now/widgets/app_bar/custom_app_bar.dart';
import 'package:survive_now/widgets/custom_button.dart';
import 'package:survive_now/widgets/custom_floating_button.dart';
import 'package:survive_now/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class CprPage extends StatelessWidget {
  CprController controller = Get.put(CprController(CprModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                leadingWidth: 57,
                leading: CustomIconButton(
                    height: 32,
                    width: 32,
                    margin: getMargin(left: 25, top: 7, bottom: 16),
                    padding: IconButtonPadding.OutlineBlack90014,
                    onTap: () {
                      onTapBtnArrowleft();
                    },
                    child:
                        CustomImageView(svgPath: ImageConstant.imgArrowleft)),
                title: AppbarTitle(text: "lbl_how_to_cpr".tr)),
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(top: 56),
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
                    margin: getMargin(top: 1),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(245),
                              width: getHorizontalSize(370),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage4245x390,
                                    height: getVerticalSize(245),
                                    width: getHorizontalSize(370),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(245),
                                        width: getHorizontalSize(370),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.black90087,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2)))))
                              ])),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: getVerticalSize(56),
                                  child: Obx(() => ListView.separated(
                                      padding: getPadding(left: 25, top: 10),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(10));
                                      },
                                      itemCount: controller.cprModelObj.value
                                          .listcallforhelp000010ItemList.length,
                                      itemBuilder: (context, index) {
                                        Listcallforhelp000010ItemModel model =
                                            controller.cprModelObj.value
                                                    .listcallforhelp000010ItemList[
                                                index];
                                        return Listcallforhelp000010ItemWidget(
                                            model);
                                      })))),
                          Container(
                              margin: getMargin(left: 25, top: 10, right: 16),
                              padding: getPadding(
                                  left: 18, top: 10, right: 18, bottom: 10),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_emergency_tools".tr,
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
                                                    padding: getPadding(top: 4),
                                                    child: Text(
                                                        "msg_use_this_when_needed"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRubikRomanRegular12Black900
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.12))))
                                              ]),
                                          CustomButton(
                                              height: getVerticalSize(32),
                                              width: getHorizontalSize(103),
                                              text: "lbl_find_doctor".tr,
                                              margin: getMargin(bottom: 4),
                                              variant: ButtonVariant
                                                  .OutlineBlack9003f,
                                              shape:
                                                  ButtonShape.RoundedBorder10,
                                              padding:
                                                  ButtonPadding.PaddingAll10)
                                        ]),
                                    Padding(
                                        padding: getPadding(top: 4),
                                        child: Obx(() => ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(5));
                                            },
                                            itemCount: controller
                                                .cprModelObj
                                                .value
                                                .listsummaryItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListsummaryItemModel model =
                                                  controller.cprModelObj.value
                                                          .listsummaryItemList[
                                                      index];
                                              return ListsummaryItemWidget(
                                                  model);
                                            }))),
                                    Container(
                                        margin: getMargin(top: 5),
                                        padding: getPadding(top: 1, bottom: 1),
                                        child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  padding: getPadding(
                                                      left: 5,
                                                      top: 10,
                                                      right: 5,
                                                      bottom: 10),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    94),
                                                            child: Text(
                                                                "msg_klinik_surgeri"
                                                                    .tr,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRubikRomanBold12Black900
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.12))))
                                                      ])),
                                              Container(
                                                  margin: getMargin(
                                                      left: 42,
                                                      top: 7,
                                                      bottom: 7),
                                                  padding: getPadding(
                                                      left: 5,
                                                      top: 10,
                                                      right: 5,
                                                      bottom: 10),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_3_2km".tr,
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
                                                                            0.12)))
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 5),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  margin: getMargin(
                                                      top: 1, bottom: 1),
                                                  padding: getPadding(
                                                      left: 5,
                                                      top: 10,
                                                      right: 5,
                                                      bottom: 10),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 14),
                                                            child: Text(
                                                                "msg_klinik_alam_medic"
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
                                              Padding(
                                                  padding: getPadding(
                                                      top: 18, bottom: 19),
                                                  child: Text("lbl_4_2km".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikRomanBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.12)))),
                                              CustomIconButton(
                                                  height: 53,
                                                  width: 53,
                                                  shape: IconButtonShape
                                                      .RoundedBorder15,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCall))
                                            ]))
                                  ]))
                        ]))),
            floatingActionButton: CustomFloatingButton(
                height: 53,
                width: 53,
                child: CustomImageView(
                    svgPath: ImageConstant.imgCall,
                    height: getVerticalSize(26.5),
                    width: getHorizontalSize(26.5)))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}

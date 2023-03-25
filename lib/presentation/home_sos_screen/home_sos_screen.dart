import '../home_sos_screen/widgets/homesos_item_widget.dart';
import 'controller/home_sos_controller.dart';
import 'models/homesos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/core/utils/validation_functions.dart';
import 'package:survive_now/presentation/cpr_page/cpr_page.dart';
import 'package:survive_now/widgets/app_bar/appbar_iconbutton.dart';
import 'package:survive_now/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:survive_now/widgets/app_bar/appbar_title.dart';
import 'package:survive_now/widgets/app_bar/custom_app_bar.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';
import 'package:survive_now/widgets/custom_button.dart';
import 'package:survive_now/widgets/custom_text_form_field.dart';

class HomeSosScreen extends GetWidget<HomeSosController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            66,
          ),
          title: Padding(
            padding: getPadding(
              left: 32,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarTitle(
                  text: "lbl_self_aids".tr,
                ),
                AppbarSubtitle1(
                  text: "lbl_get_help_fast".tr,
                  margin: getMargin(
                    top: 5,
                    right: 73,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgMicrophone,
              margin: getMargin(
                left: 45,
                right: 45,
                bottom: 13,
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          height: size.height,
          padding: getPadding(
            top: 61,
            bottom: 100,
          ),
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
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: controller.languageController,
                    hintText: "msg_enter_name_or_category".tr,
                    margin: getMargin(
                      left: 32,
                      top: 18,
                      right: 31,
                    ),
                    padding: TextFormFieldPadding.PaddingT15,
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: getMargin(
                        left: 12,
                        top: 16,
                        right: 16,
                        bottom: 16,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray90075,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearch,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        52,
                      ),
                    ),
                    validator: (value) {
                      if (!isText(value)) {
                        return "Please enter valid text";
                      }
                      return null;
                    },
                  ),
                  Container(
                    margin: getMargin(
                      left: 32,
                      top: 20,
                      right: 31,
                    ),
                    padding: getPadding(
                      left: 18,
                      top: 11,
                      right: 18,
                      bottom: 11,
                    ),
                    decoration: AppDecoration.outlineRedA700ea.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomButton(
                          height: getVerticalSize(
                            60,
                          ),
                          text: "lbl_sos".tr,
                          variant: ButtonVariant.Primary,
                          fontStyle: ButtonFontStyle.RubikRomanBold32,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 32,
                        top: 21,
                      ),
                      child: Text(
                        "lbl_category".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRubikMedium18,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: getPadding(
                        left: 32,
                        top: 17,
                      ),
                      child: IntrinsicWidth(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                162,
                              ),
                              padding: getPadding(
                                all: 8,
                              ),
                              decoration: AppDecoration.fillGray50.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Row(
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.amberA200,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Container(
                                      height: getSize(
                                        36,
                                      ),
                                      width: getSize(
                                        36,
                                      ),
                                      padding: getPadding(
                                        all: 7,
                                      ),
                                      decoration:
                                          AppDecoration.fillAmberA200.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Stack(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgStar,
                                            height: getVerticalSize(
                                              21,
                                            ),
                                            width: getHorizontalSize(
                                              22,
                                            ),
                                            alignment: Alignment.topCenter,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                      top: 10,
                                      bottom: 7,
                                    ),
                                    child: Text(
                                      "lbl_top_searches".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRubikRegular15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                116,
                              ),
                              margin: getMargin(
                                left: 12,
                              ),
                              padding: getPadding(
                                all: 8,
                              ),
                              decoration: AppDecoration.fillGray50.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Row(
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.teal200,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Container(
                                      height: getSize(
                                        36,
                                      ),
                                      width: getSize(
                                        36,
                                      ),
                                      padding: getPadding(
                                        left: 4,
                                        top: 5,
                                        right: 4,
                                        bottom: 5,
                                      ),
                                      decoration:
                                          AppDecoration.fillTeal200.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Stack(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgGroup,
                                            height: getVerticalSize(
                                              25,
                                            ),
                                            width: getHorizontalSize(
                                              28,
                                            ),
                                            alignment: Alignment.topCenter,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                      top: 8,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl_nature".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRubikRegular15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                115,
                              ),
                              margin: getMargin(
                                left: 12,
                              ),
                              padding: getPadding(
                                all: 8,
                              ),
                              decoration: AppDecoration.fillGray50.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15,
                              ),
                              child: Row(
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.red400,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8,
                                    ),
                                    child: Container(
                                      height: getSize(
                                        36,
                                      ),
                                      width: getSize(
                                        36,
                                      ),
                                      padding: getPadding(
                                        left: 7,
                                        top: 9,
                                        right: 7,
                                        bottom: 9,
                                      ),
                                      decoration:
                                          AppDecoration.fillRed400.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Stack(
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgLightbulb,
                                            height: getVerticalSize(
                                              16,
                                            ),
                                            width: getHorizontalSize(
                                              22,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                      top: 8,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      "lbl_gastro".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRubikRegular15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 32,
                        top: 21,
                      ),
                      child: Text(
                        "lbl_popular".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRubikMedium18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 32,
                      top: 17,
                      right: 22,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            169,
                          ),
                          crossAxisCount: 2,
                          mainAxisSpacing: getHorizontalSize(
                            8,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            8,
                          ),
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller
                            .homeSosModelObj.value.homesosItemList.length,
                        itemBuilder: (context, index) {
                          HomesosItemModel model = controller
                              .homeSosModelObj.value.homesosItemList[index];
                          return HomesosItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
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

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.cprPage:
        return CprPage();
      default:
        return DefaultWidget();
    }
  }
}

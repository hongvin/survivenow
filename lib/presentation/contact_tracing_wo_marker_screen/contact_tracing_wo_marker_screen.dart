import 'controller/contact_tracing_wo_marker_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/cpr_page/cpr_page.dart';
import 'package:survive_now/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:survive_now/widgets/app_bar/appbar_subtitle.dart';
import 'package:survive_now/widgets/app_bar/custom_app_bar.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';
import 'package:survive_now/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ContactTracingWoMarkerScreen
    extends GetWidget<ContactTracingWoMarkerController> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
                height: getVerticalSize(57),
                leadingWidth: 40,
                leading: AppbarIconbutton2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 8),
                    onTap: onTapArrowleft4),
                title: AppbarSubtitle(
                    text: "msg_searching_for_doctors".tr,
                    margin: getMargin(left: 8))),
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(top: 32, bottom: 95),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.53, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.whiteA700,
                      ColorConstant.gray100
                    ])),
                child: Container(
                    height: getVerticalSize(547),
                    width: double.maxFinite,
                    padding: getPadding(left: 5, right: 5),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      CustomIconButton(
                          height: 60,
                          width: 60,
                          margin: getMargin(right: 16, bottom: 160),
                          variant: IconButtonVariant.OutlineBlack90014_1,
                          padding: IconButtonPadding.PaddingAll15,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgLocation)),
                      Container(
                          height: getVerticalSize(530),
                          width: getHorizontalSize(398),
                          child: GoogleMap(
                              mapType: MapType.normal,
                              initialCameraPosition: CameraPosition(
                                  target: LatLng(
                                      37.43296265331129, -122.08832357078792),
                                  zoom: 14.4746),
                              onMapCreated: (GoogleMapController controller) {
                                googleMapController.complete(controller);
                              },
                              zoomControlsEnabled: false,
                              zoomGesturesEnabled: false,
                              myLocationButtonEnabled: false,
                              myLocationEnabled: false)),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 15, top: 7, right: 15, bottom: 7),
                                    decoration: AppDecoration.outlineBlack9003f1
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
                                        left: 19, top: 7, right: 19, bottom: 7),
                                    decoration: AppDecoration.outlineBlack9003f1
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_rescue".tr,
                                              overflow: TextOverflow.ellipsis,
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

  onTapArrowleft4() {
    Get.back();
  }
}

import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
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
                        begin: Alignment(0.53, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      ColorConstant.whiteA700,
                      ColorConstant.gray100
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 60, right: 60),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage16,
                              height: getSize(265),
                              width: getSize(265),
                              margin: getMargin(bottom: 5))
                        ])))));
  }
}

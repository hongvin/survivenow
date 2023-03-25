import '../controller/victim_view_controller.dart';
import '../models/sliderwhatyoushould_item_model.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';

// ignore: must_be_immutable
class SliderwhatyoushouldItemWidget extends StatelessWidget {
  SliderwhatyoushouldItemWidget(this.sliderwhatyoushouldItemModelObj);

  SliderwhatyoushouldItemModel sliderwhatyoushouldItemModelObj;

  var controller = Get.find<VictimViewController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          top: 10,
          bottom: 10,
        ),
        decoration: AppDecoration.outlineRed500ea01.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: getHorizontalSize(
                288,
              ),
              margin: getMargin(
                left: 18,
                right: 63,
              ),
              child: Text(
                "msg_what_you_should".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtRubikRomanBold16Black900.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.16,
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                352,
              ),
              margin: getMargin(
                left: 18,
                top: 10,
              ),
              padding: getPadding(
                top: 2,
                bottom: 2,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      left: 2,
                      bottom: 34,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: getSize(
                              328,
                            ),
                            width: getSize(
                              328,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: getVerticalSize(
                                      320,
                                    ),
                                    width: getHorizontalSize(
                                      327,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.black900,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          8,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgAd9fa01071974,
                                  height: getSize(
                                    328,
                                  ),
                                  width: getSize(
                                    328,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getSize(
                              328,
                            ),
                            width: getSize(
                              328,
                            ),
                            margin: getMargin(
                              left: 11,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: getVerticalSize(
                                      320,
                                    ),
                                    width: getHorizontalSize(
                                      327,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.black900,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          8,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgAd9fa01071974,
                                  height: getSize(
                                    328,
                                  ),
                                  width: getSize(
                                    328,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getSize(
                              328,
                            ),
                            width: getSize(
                              328,
                            ),
                            margin: getMargin(
                              left: 11,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: getVerticalSize(
                                      320,
                                    ),
                                    width: getHorizontalSize(
                                      327,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.black900,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          8,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgAd9fa01071974,
                                  height: getSize(
                                    328,
                                  ),
                                  width: getSize(
                                    328,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

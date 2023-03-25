import '../controller/home_sos_controller.dart';
import '../models/home_sos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';

// ignore: must_be_immutable
class HomeSosItemWidget extends StatelessWidget {
  HomeSosItemWidget(this.homeSosItemModelObj, {this.onTapImgImageFour});

  HomeSosItemModel homeSosItemModelObj;

  var controller = Get.find<HomeSosController>();

  VoidCallback? onTapImgImageFour;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        168,
      ),
      width: getHorizontalSize(
        163,
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage4,
            height: getVerticalSize(
              168,
            ),
            width: getHorizontalSize(
              163,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                28,
              ),
            ),
            alignment: Alignment.center,
            onTap: () {
              onTapImgImageFour!();
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: getPadding(
                right: 1,
                bottom: 9,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      147,
                    ),
                    decoration: AppDecoration.txtOutlineBlack9007f,
                    child: Obx(
                      () => Text(
                        homeSosItemModelObj.descriptionTxt.value,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRubikMedium16,
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 7,
                      right: 67,
                    ),
                    padding: getPadding(
                      left: 7,
                      top: 3,
                      right: 7,
                      bottom: 3,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder11,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgRate3,
                          height: getSize(
                            13,
                          ),
                          width: getSize(
                            13,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              1,
                            ),
                          ),
                          margin: getMargin(
                            top: 1,
                            bottom: 1,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                          ),
                          child: Obx(
                            () => Text(
                              homeSosItemModelObj.totalviewsTxt.value,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRubikRegular13Black90095,
                            ),
                          ),
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
    );
  }
}

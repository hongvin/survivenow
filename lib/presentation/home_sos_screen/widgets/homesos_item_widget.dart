import '../controller/home_sos_controller.dart';
import '../models/homesos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';

// ignore: must_be_immutable
class HomesosItemWidget extends StatelessWidget {
  HomesosItemWidget(this.homesosItemModelObj);

  HomesosItemModel homesosItemModelObj;

  var controller = Get.find<HomeSosController>();

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
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: getPadding(
                bottom: 16,
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
                    child: Text(
                      "msg_how_to_perform_cpr".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRubikMedium16,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 7,
                      right: 65,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgRate5,
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
                            bottom: 2,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 4,
                          ),
                          child: Text(
                            "lbl_104_669".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRubikRegular13,
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

import '../controller/cpr_controller.dart';
import '../models/listsummary_item_model.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListsummaryItemWidget extends StatelessWidget {
  ListsummaryItemWidget(this.listsummaryItemModelObj);

  ListsummaryItemModel listsummaryItemModelObj;

  var controller = Get.find<CprController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: getHorizontalSize(
            148,
          ),
          margin: getMargin(
            top: 8,
            bottom: 8,
          ),
          padding: getPadding(
            left: 5,
            top: 10,
            right: 5,
            bottom: 10,
          ),
          decoration: AppDecoration.txtFillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder15,
          ),
          child: Text(
            "msg_klinik_mediviron".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRubikRomanBold12.copyWith(
              letterSpacing: getHorizontalSize(
                0.12,
              ),
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            46,
          ),
          margin: getMargin(
            top: 8,
            bottom: 8,
          ),
          padding: getPadding(
            left: 5,
            top: 10,
            right: 5,
            bottom: 10,
          ),
          decoration: AppDecoration.txtFillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder15,
          ),
          child: Text(
            "lbl_1_2km".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRubikRomanBold12.copyWith(
              letterSpacing: getHorizontalSize(
                0.12,
              ),
            ),
          ),
        ),
        CustomIconButton(
          height: 53,
          width: 53,
          shape: IconButtonShape.RoundedBorder15,
          child: CustomImageView(
            svgPath: ImageConstant.imgCall,
          ),
        ),
      ],
    );
  }
}

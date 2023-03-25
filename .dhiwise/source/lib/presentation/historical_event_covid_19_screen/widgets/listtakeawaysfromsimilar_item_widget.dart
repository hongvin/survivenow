import '../controller/historical_event_covid_19_controller.dart';
import '../models/listtakeawaysfromsimilar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';

// ignore: must_be_immutable
class ListtakeawaysfromsimilarItemWidget extends StatelessWidget {
  ListtakeawaysfromsimilarItemWidget(this.listtakeawaysfromsimilarItemModelObj);

  ListtakeawaysfromsimilarItemModel listtakeawaysfromsimilarItemModelObj;

  var controller = Get.find<HistoricalEventCovid19Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 11,
          top: 9,
          right: 11,
          bottom: 9,
        ),
        decoration: AppDecoration.outlineBlack9003f.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 6,
              ),
              child: Obx(
                () => Text(
                  listtakeawaysfromsimilarItemModelObj
                      .tAKEAWAYSFROMSIMILARTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRubikRomanBold12.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.12,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
              ),
              child: Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.blueGray100,
                indent: getHorizontalSize(
                  6,
                ),
                endIndent: getHorizontalSize(
                  8,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 6,
                top: 9,
              ),
              child: Obx(
                () => Text(
                  listtakeawaysfromsimilarItemModelObj.languageTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRubikRomanRegular12Black900.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.12,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                317,
              ),
              margin: getMargin(
                left: 6,
                top: 8,
              ),
              child: Obx(
                () => Text(
                  listtakeawaysfromsimilarItemModelObj.descriptionTxt.value,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRubikRomanRegular12.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

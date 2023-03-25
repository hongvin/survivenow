import '../controller/cpr_controller.dart';
import '../models/listcallforhelp000010_item_model.dart';
import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';

// ignore: must_be_immutable
class Listcallforhelp000010ItemWidget extends StatelessWidget {
  Listcallforhelp000010ItemWidget(this.listcallforhelp000010ItemModelObj);

  Listcallforhelp000010ItemModel listcallforhelp000010ItemModelObj;

  var controller = Get.find<CprController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 10,
          ),
          padding: getPadding(
            left: 5,
            top: 10,
            right: 5,
            bottom: 10,
          ),
          decoration: AppDecoration.outlineBlack9003f1.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: getHorizontalSize(
                  61,
                ),
                margin: getMargin(
                  bottom: 1,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_call_for_help".tr,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            10,
                          ),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w700,
                          letterSpacing: getHorizontalSize(
                            0.1,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "lbl_0_00_0_10".tr,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            10,
                          ),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                          letterSpacing: getHorizontalSize(
                            0.1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

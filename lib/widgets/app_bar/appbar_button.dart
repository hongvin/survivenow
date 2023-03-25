import 'package:flutter/material.dart';
import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/widgets/custom_button.dart';

// ignore: must_be_immutable
class AppbarButton extends StatelessWidget {
  AppbarButton({this.margin, this.onTap});

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomButton(
          height: getVerticalSize(
            40,
          ),
          width: getHorizontalSize(
            65,
          ),
          text: "lbl_nadma".tr,
          variant: ButtonVariant.FillRed500,
          shape: ButtonShape.RoundedBorder10,
        ),
      ),
    );
  }
}
